// Copyright (c) 2011-2014 The Bitcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef ISOCOIN_QT_ISOCOINADDRESSVALIDATOR_H
#define ISOCOIN_QT_ISOCOINADDRESSVALIDATOR_H

#include <QValidator>

/** Base58 entry widget validator, checks for valid characters and
 * removes some whitespace.
 */
class IsocoinAddressEntryValidator : public QValidator
{
    Q_OBJECT

public:
    explicit IsocoinAddressEntryValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

/** Isocoin address widget validator, checks for a valid isocoin address.
 */
class IsocoinAddressCheckValidator : public QValidator
{
    Q_OBJECT

public:
    explicit IsocoinAddressCheckValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

#endif // ISOCOIN_QT_ISOCOINADDRESSVALIDATOR_H
