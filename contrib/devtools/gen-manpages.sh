#!/usr/bin/env bash

export LC_ALL=C
TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
BUILDDIR=${BUILDDIR:-$TOPDIR}

BINDIR=${BINDIR:-$BUILDDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

ISOCOIND=${ISOCOIND:-$BINDIR/isocoind}
ISOCOINCLI=${ISOCOINCLI:-$BINDIR/isocoin-cli}
ISOCOINTX=${ISOCOINTX:-$BINDIR/isocoin-tx}
ISOCOINQT=${ISOCOINQT:-$BINDIR/qt/isocoin-qt}

[ ! -x $ISOCOIND ] && echo "$ISOCOIND not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
BTCVER=($($ISOCOINCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))

# Create a footer file with copyright content.
# This gets autodetected fine for isocoind if --version-string is not set,
# but has different outcomes for isocoin-qt and isocoin-cli.
echo "[COPYRIGHT]" > footer.h2m
$ISOCOIND --version | sed -n '1!p' >> footer.h2m

for cmd in $ISOCOIND $ISOCOINCLI $ISOCOINTX $ISOCOINQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${BTCVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${BTCVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
