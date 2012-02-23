.class public abstract Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;
.super Landroid/os/Binder;
.source "IPhoneRestrictionPolicy.java"

# interfaces
.implements Landroid/app/enterprise/IPhoneRestrictionPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IPhoneRestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IPhoneRestrictionPolicy"

.field static final TRANSACTION_addIncomingCallRestriction:I = 0x6

.field static final TRANSACTION_addIncomingSmsRestriction:I = 0x1b

.field static final TRANSACTION_addNumberOfIncomingCalls:I = 0x13

.field static final TRANSACTION_addNumberOfIncomingSms:I = 0x27

.field static final TRANSACTION_addNumberOfOutgoingCalls:I = 0x14

.field static final TRANSACTION_addNumberOfOutgoingSms:I = 0x28

.field static final TRANSACTION_addOutgoingCallRestriction:I = 0x5

.field static final TRANSACTION_addOutgoingSmsRestriction:I = 0x1a

.field static final TRANSACTION_canIncomingCall:I = 0xa

.field static final TRANSACTION_canIncomingSms:I = 0x1f

.field static final TRANSACTION_canOutgoingCall:I = 0x9

.field static final TRANSACTION_canOutgoingSms:I = 0x1e

.field static final TRANSACTION_checkDataCallLimit:I = 0x30

.field static final TRANSACTION_checkEnableUseOfPacketData:I = 0x2f

.field static final TRANSACTION_decreaseNumberOfOutgoingSms:I = 0x29

.field static final TRANSACTION_enableLimitNumberOfCalls:I = 0xd

.field static final TRANSACTION_enableLimitNumberOfSms:I = 0x20

.field static final TRANSACTION_getDataCallLimitEnabled:I = 0x2b

.field static final TRANSACTION_getEmergencyCallOnly:I = 0xc

.field static final TRANSACTION_getIncomingCallRestriction:I = 0x2

.field static final TRANSACTION_getIncomingSmsRestriction:I = 0x17

.field static final TRANSACTION_getLimitOfDataCalls:I = 0x2d

.field static final TRANSACTION_getLimitOfIncomingCalls:I = 0x10

.field static final TRANSACTION_getLimitOfIncomingSms:I = 0x24

.field static final TRANSACTION_getLimitOfOutgoingCalls:I = 0x12

.field static final TRANSACTION_getLimitOfOutgoingSms:I = 0x26

.field static final TRANSACTION_getOutgoingCallRestriction:I = 0x1

.field static final TRANSACTION_getOutgoingSmsRestriction:I = 0x16

.field static final TRANSACTION_isLimitNumberOfCallsEnabled:I = 0xe

.field static final TRANSACTION_isLimitNumberOfSmsEnabled:I = 0x21

.field static final TRANSACTION_removeIncomingCallRestriction:I = 0x4

.field static final TRANSACTION_removeIncomingSmsRestriction:I = 0x19

.field static final TRANSACTION_removeOutgoingCallRestriction:I = 0x3

.field static final TRANSACTION_removeOutgoingSmsRestriction:I = 0x18

.field static final TRANSACTION_resetCallsCount:I = 0x15

.field static final TRANSACTION_resetDataCallLimitCounter:I = 0x2e

.field static final TRANSACTION_resetSmsCount:I = 0x22

.field static final TRANSACTION_setDataCallLimitEnabled:I = 0x2a

.field static final TRANSACTION_setEmergencyCallOnly:I = 0xb

.field static final TRANSACTION_setIncomingCallRestriction:I = 0x8

.field static final TRANSACTION_setIncomingSmsRestriction:I = 0x1d

.field static final TRANSACTION_setLimitOfDataCalls:I = 0x2c

.field static final TRANSACTION_setLimitOfIncomingCalls:I = 0xf

.field static final TRANSACTION_setLimitOfIncomingSms:I = 0x23

.field static final TRANSACTION_setLimitOfOutgoingCalls:I = 0x11

.field static final TRANSACTION_setLimitOfOutgoingSms:I = 0x25

.field static final TRANSACTION_setOutgoingCallRestriction:I = 0x7

.field static final TRANSACTION_setOutgoingSmsRestriction:I = 0x1c

.field static final TRANSACTION_updateDataLimitState:I = 0x32

.field static final TRANSACTION_updateDateAndDataCallCounters:I = 0x31


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IPhoneRestrictionPolicy;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/enterprise/IPhoneRestrictionPolicy;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/app/enterprise/IPhoneRestrictionPolicy;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 530
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    :goto_0
    return v9

    .line 42
    :sswitch_0
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v1, v9

    .line 50
    .local v1, _arg0:Z
    :goto_1
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getOutgoingCallRestriction(Z)Ljava/lang/String;

    move-result-object v7

    .line 51
    .local v7, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .end local v1           #_arg0:Z
    .end local v7           #_result:Ljava/lang/String;
    :cond_0
    move v1, v10

    .line 49
    goto :goto_1

    .line 57
    :sswitch_2
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v9

    .line 60
    .restart local v1       #_arg0:Z
    :goto_2
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getIncomingCallRestriction(Z)Ljava/lang/String;

    move-result-object v7

    .line 61
    .restart local v7       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .end local v1           #_arg0:Z
    .end local v7           #_result:Ljava/lang/String;
    :cond_1
    move v1, v10

    .line 59
    goto :goto_2

    .line 67
    :sswitch_3
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->removeOutgoingCallRestriction()Z

    move-result v7

    .line 69
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    if-eqz v7, :cond_2

    move v10, v9

    :cond_2
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 75
    .end local v7           #_result:Z
    :sswitch_4
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->removeIncomingCallRestriction()Z

    move-result v7

    .line 77
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v7, :cond_3

    move v10, v9

    :cond_3
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 83
    .end local v7           #_result:Z
    :sswitch_5
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->addOutgoingCallRestriction(Ljava/lang/String;)Z

    move-result v7

    .line 87
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    if-eqz v7, :cond_4

    move v10, v9

    :cond_4
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 93
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Z
    :sswitch_6
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->addIncomingCallRestriction(Ljava/lang/String;)Z

    move-result v7

    .line 97
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    if-eqz v7, :cond_5

    move v10, v9

    :cond_5
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 103
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Z
    :sswitch_7
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 106
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setOutgoingCallRestriction(Ljava/lang/String;)Z

    move-result v7

    .line 107
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v7, :cond_6

    move v10, v9

    :cond_6
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 113
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Z
    :sswitch_8
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 116
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setIncomingCallRestriction(Ljava/lang/String;)Z

    move-result v7

    .line 117
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v7, :cond_7

    move v10, v9

    :cond_7
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 123
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Z
    :sswitch_9
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 126
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->canOutgoingCall(Ljava/lang/String;)Z

    move-result v7

    .line 127
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v7, :cond_8

    move v10, v9

    :cond_8
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 133
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Z
    :sswitch_a
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 136
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->canIncomingCall(Ljava/lang/String;)Z

    move-result v7

    .line 137
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    if-eqz v7, :cond_9

    move v10, v9

    :cond_9
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 143
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Z
    :sswitch_b
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    move v1, v9

    .line 146
    .local v1, _arg0:Z
    :goto_3
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setEmergencyCallOnly(Z)Z

    move-result v7

    .line 147
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v7, :cond_a

    move v10, v9

    :cond_a
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v7           #_result:Z
    :cond_b
    move v1, v10

    .line 145
    goto :goto_3

    .line 153
    :sswitch_c
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    move v1, v9

    .line 156
    .restart local v1       #_arg0:Z
    :goto_4
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getEmergencyCallOnly(Z)Z

    move-result v7

    .line 157
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    if-eqz v7, :cond_c

    move v10, v9

    :cond_c
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v7           #_result:Z
    :cond_d
    move v1, v10

    .line 155
    goto :goto_4

    .line 163
    :sswitch_d
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    move v1, v9

    .line 166
    .restart local v1       #_arg0:Z
    :goto_5
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->enableLimitNumberOfCalls(Z)Z

    move-result v7

    .line 167
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    if-eqz v7, :cond_e

    move v10, v9

    :cond_e
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v7           #_result:Z
    :cond_f
    move v1, v10

    .line 165
    goto :goto_5

    .line 173
    :sswitch_e
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->isLimitNumberOfCallsEnabled()Z

    move-result v7

    .line 175
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v7, :cond_10

    move v10, v9

    :cond_10
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 181
    .end local v7           #_result:Z
    :sswitch_f
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 185
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 187
    .local v3, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 188
    .local v5, _arg2:I
    invoke-virtual {p0, v1, v3, v5}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setLimitOfIncomingCalls(III)Z

    move-result v7

    .line 189
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    if-eqz v7, :cond_11

    move v10, v9

    :cond_11
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 195
    .end local v1           #_arg0:I
    .end local v3           #_arg1:I
    .end local v5           #_arg2:I
    .end local v7           #_result:Z
    :sswitch_10
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 198
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getLimitOfIncomingCalls(I)I

    move-result v7

    .line 199
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 205
    .end local v1           #_arg0:I
    .end local v7           #_result:I
    :sswitch_11
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 209
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 211
    .restart local v3       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 212
    .restart local v5       #_arg2:I
    invoke-virtual {p0, v1, v3, v5}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setLimitOfOutgoingCalls(III)Z

    move-result v7

    .line 213
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    if-eqz v7, :cond_12

    move v10, v9

    :cond_12
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 219
    .end local v1           #_arg0:I
    .end local v3           #_arg1:I
    .end local v5           #_arg2:I
    .end local v7           #_result:Z
    :sswitch_12
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 222
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getLimitOfOutgoingCalls(I)I

    move-result v7

    .line 223
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 229
    .end local v1           #_arg0:I
    .end local v7           #_result:I
    :sswitch_13
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->addNumberOfIncomingCalls()Z

    move-result v7

    .line 231
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    if-eqz v7, :cond_13

    move v10, v9

    :cond_13
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 237
    .end local v7           #_result:Z
    :sswitch_14
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->addNumberOfOutgoingCalls()Z

    move-result v7

    .line 239
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    if-eqz v7, :cond_14

    move v10, v9

    :cond_14
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 245
    .end local v7           #_result:Z
    :sswitch_15
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->resetCallsCount()Z

    move-result v7

    .line 247
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    if-eqz v7, :cond_15

    move v10, v9

    :cond_15
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 253
    .end local v7           #_result:Z
    :sswitch_16
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    move v1, v9

    .line 256
    .local v1, _arg0:Z
    :goto_6
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getOutgoingSmsRestriction(Z)Ljava/lang/String;

    move-result-object v7

    .line 257
    .local v7, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v7           #_result:Ljava/lang/String;
    :cond_16
    move v1, v10

    .line 255
    goto :goto_6

    .line 263
    :sswitch_17
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    move v1, v9

    .line 266
    .restart local v1       #_arg0:Z
    :goto_7
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getIncomingSmsRestriction(Z)Ljava/lang/String;

    move-result-object v7

    .line 267
    .restart local v7       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v7           #_result:Ljava/lang/String;
    :cond_17
    move v1, v10

    .line 265
    goto :goto_7

    .line 273
    :sswitch_18
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->removeOutgoingSmsRestriction()Z

    move-result v7

    .line 275
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    if-eqz v7, :cond_18

    move v10, v9

    :cond_18
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 281
    .end local v7           #_result:Z
    :sswitch_19
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->removeIncomingSmsRestriction()Z

    move-result v7

    .line 283
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    if-eqz v7, :cond_19

    move v10, v9

    :cond_19
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 289
    .end local v7           #_result:Z
    :sswitch_1a
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->addOutgoingSmsRestriction(Ljava/lang/String;)Z

    move-result v7

    .line 293
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    if-eqz v7, :cond_1a

    move v10, v9

    :cond_1a
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 299
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Z
    :sswitch_1b
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 302
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->addIncomingSmsRestriction(Ljava/lang/String;)Z

    move-result v7

    .line 303
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    if-eqz v7, :cond_1b

    move v10, v9

    :cond_1b
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 309
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Z
    :sswitch_1c
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 312
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setOutgoingSmsRestriction(Ljava/lang/String;)Z

    move-result v7

    .line 313
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    if-eqz v7, :cond_1c

    move v10, v9

    :cond_1c
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 319
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Z
    :sswitch_1d
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 322
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setIncomingSmsRestriction(Ljava/lang/String;)Z

    move-result v7

    .line 323
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    if-eqz v7, :cond_1d

    move v10, v9

    :cond_1d
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 329
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Z
    :sswitch_1e
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 332
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->canOutgoingSms(Ljava/lang/String;)Z

    move-result v7

    .line 333
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    if-eqz v7, :cond_1e

    move v10, v9

    :cond_1e
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 339
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Z
    :sswitch_1f
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 342
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->canIncomingSms(Ljava/lang/String;)Z

    move-result v7

    .line 343
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    if-eqz v7, :cond_1f

    move v10, v9

    :cond_1f
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 349
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Z
    :sswitch_20
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_21

    move v1, v9

    .line 352
    .local v1, _arg0:Z
    :goto_8
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->enableLimitNumberOfSms(Z)Z

    move-result v7

    .line 353
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    if-eqz v7, :cond_20

    move v10, v9

    :cond_20
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v7           #_result:Z
    :cond_21
    move v1, v10

    .line 351
    goto :goto_8

    .line 359
    :sswitch_21
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->isLimitNumberOfSmsEnabled()Z

    move-result v7

    .line 361
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    if-eqz v7, :cond_22

    move v10, v9

    :cond_22
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 367
    .end local v7           #_result:Z
    :sswitch_22
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->resetSmsCount()Z

    move-result v7

    .line 369
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    if-eqz v7, :cond_23

    move v10, v9

    :cond_23
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 375
    .end local v7           #_result:Z
    :sswitch_23
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 379
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 381
    .restart local v3       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 382
    .restart local v5       #_arg2:I
    invoke-virtual {p0, v1, v3, v5}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setLimitOfIncomingSms(III)Z

    move-result v7

    .line 383
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    if-eqz v7, :cond_24

    move v10, v9

    :cond_24
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 389
    .end local v1           #_arg0:I
    .end local v3           #_arg1:I
    .end local v5           #_arg2:I
    .end local v7           #_result:Z
    :sswitch_24
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 392
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getLimitOfIncomingSms(I)I

    move-result v7

    .line 393
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 399
    .end local v1           #_arg0:I
    .end local v7           #_result:I
    :sswitch_25
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 403
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 405
    .restart local v3       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 406
    .restart local v5       #_arg2:I
    invoke-virtual {p0, v1, v3, v5}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setLimitOfOutgoingSms(III)Z

    move-result v7

    .line 407
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    if-eqz v7, :cond_25

    move v10, v9

    :cond_25
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 413
    .end local v1           #_arg0:I
    .end local v3           #_arg1:I
    .end local v5           #_arg2:I
    .end local v7           #_result:Z
    :sswitch_26
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 416
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getLimitOfOutgoingSms(I)I

    move-result v7

    .line 417
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 423
    .end local v1           #_arg0:I
    .end local v7           #_result:I
    :sswitch_27
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->addNumberOfIncomingSms()Z

    move-result v7

    .line 425
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    if-eqz v7, :cond_26

    move v10, v9

    :cond_26
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 431
    .end local v7           #_result:Z
    :sswitch_28
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->addNumberOfOutgoingSms()Z

    move-result v7

    .line 433
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    if-eqz v7, :cond_27

    move v10, v9

    :cond_27
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 439
    .end local v7           #_result:Z
    :sswitch_29
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->decreaseNumberOfOutgoingSms()Z

    move-result v7

    .line 441
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    if-eqz v7, :cond_28

    move v10, v9

    :cond_28
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 447
    .end local v7           #_result:Z
    :sswitch_2a
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2a

    move v1, v9

    .line 450
    .local v1, _arg0:Z
    :goto_9
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setDataCallLimitEnabled(Z)Z

    move-result v7

    .line 451
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    if-eqz v7, :cond_29

    move v10, v9

    :cond_29
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v7           #_result:Z
    :cond_2a
    move v1, v10

    .line 449
    goto :goto_9

    .line 457
    :sswitch_2b
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getDataCallLimitEnabled()Z

    move-result v7

    .line 459
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    if-eqz v7, :cond_2b

    move v10, v9

    :cond_2b
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 465
    .end local v7           #_result:Z
    :sswitch_2c
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 469
    .local v1, _arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 471
    .local v3, _arg1:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .local v5, _arg2:J
    move-object v0, p0

    .line 472
    invoke-virtual/range {v0 .. v6}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->setLimitOfDataCalls(JJJ)Z

    move-result v7

    .line 473
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    if-eqz v7, :cond_2c

    move v10, v9

    :cond_2c
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 479
    .end local v1           #_arg0:J
    .end local v3           #_arg1:J
    .end local v5           #_arg2:J
    .end local v7           #_result:Z
    :sswitch_2d
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 482
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->getLimitOfDataCalls(I)J

    move-result-wide v7

    .line 483
    .local v7, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    invoke-virtual {p3, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 489
    .end local v1           #_arg0:I
    .end local v7           #_result:J
    :sswitch_2e
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->resetDataCallLimitCounter()Z

    move-result v7

    .line 491
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    if-eqz v7, :cond_2d

    move v10, v9

    :cond_2d
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 497
    .end local v7           #_result:Z
    :sswitch_2f
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2f

    move v1, v9

    .line 500
    .local v1, _arg0:Z
    :goto_a
    invoke-virtual {p0, v1}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->checkEnableUseOfPacketData(Z)Z

    move-result v7

    .line 501
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    if-eqz v7, :cond_2e

    move v10, v9

    :cond_2e
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v7           #_result:Z
    :cond_2f
    move v1, v10

    .line 499
    goto :goto_a

    .line 507
    :sswitch_30
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->checkDataCallLimit()Z

    move-result v7

    .line 509
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    if-eqz v7, :cond_30

    move v10, v9

    :cond_30
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 515
    .end local v7           #_result:Z
    :sswitch_31
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 518
    .local v1, _arg0:J
    invoke-virtual {p0, v1, v2}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->updateDateAndDataCallCounters(J)V

    .line 519
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 524
    .end local v1           #_arg0:J
    :sswitch_32
    const-string v0, "android.app.enterprise.IPhoneRestrictionPolicy"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p0}, Landroid/app/enterprise/IPhoneRestrictionPolicy$Stub;->updateDataLimitState()V

    .line 526
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
