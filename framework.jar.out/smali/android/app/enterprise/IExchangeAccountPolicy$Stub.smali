.class public abstract Landroid/app/enterprise/IExchangeAccountPolicy$Stub;
.super Landroid/os/Binder;
.source "IExchangeAccountPolicy.java"

# interfaces
.implements Landroid/app/enterprise/IExchangeAccountPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IExchangeAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IExchangeAccountPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IExchangeAccountPolicy"

.field static final TRANSACTION_addNewAccount:I = 0x2

.field static final TRANSACTION_addNewAccount_ex:I = 0x3

.field static final TRANSACTION_createAccount:I = 0x1

.field static final TRANSACTION_deleteAccount:I = 0x14

.field static final TRANSACTION_getAccountDetails:I = 0x13

.field static final TRANSACTION_getAccountId:I = 0x12

.field static final TRANSACTION_getAllEASAccounts:I = 0x19

.field static final TRANSACTION_getDeviceId:I = 0x1a

.field static final TRANSACTION_sendAccountsChangedBroadcast:I = 0x15

.field static final TRANSACTION_setAcceptAllCertificates:I = 0x6

.field static final TRANSACTION_setAccountBaseParameters:I = 0x4

.field static final TRANSACTION_setAccountName:I = 0x11

.field static final TRANSACTION_setAlwaysVibrateOnEmailNotification:I = 0x7

.field static final TRANSACTION_setAsDefaultAccount:I = 0x10

.field static final TRANSACTION_setClientAuthCert:I = 0xc

.field static final TRANSACTION_setDataSyncs:I = 0x18

.field static final TRANSACTION_setPassword:I = 0x9

.field static final TRANSACTION_setPastDaysToSync:I = 0xd

.field static final TRANSACTION_setProtocolVersion:I = 0xa

.field static final TRANSACTION_setSSL:I = 0x5

.field static final TRANSACTION_setSenderName:I = 0xf

.field static final TRANSACTION_setSignature:I = 0xb

.field static final TRANSACTION_setSilentVibrateOnEmailNotification:I = 0x8

.field static final TRANSACTION_setSyncInterval:I = 0xe

.field static final TRANSACTION_setSyncPeakTimings:I = 0x16

.field static final TRANSACTION_setSyncSchedules:I = 0x17


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.app.enterprise.IExchangeAccountPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IExchangeAccountPolicy;
    .locals 2
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "android.app.enterprise.IExchangeAccountPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/app/enterprise/IExchangeAccountPolicy;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Landroid/app/enterprise/IExchangeAccountPolicy$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 55
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 467
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 46
    :sswitch_0
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v3, 0x1

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 57
    .local v5, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 59
    .local v6, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 61
    .local v7, _arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, _arg4:Ljava/lang/String;
    move-object/from16 v3, p0

    .line 62
    invoke-virtual/range {v3 .. v8}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->createAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v53

    .line 63
    .local v53, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    move-object/from16 v0, p3

    move-wide/from16 v1, v53

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 65
    const/4 v3, 0x1

    goto :goto_0

    .line 69
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:Ljava/lang/String;
    .end local v8           #_arg4:Ljava/lang/String;
    .end local v53           #_result:J
    :sswitch_2
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 73
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 75
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 77
    .restart local v6       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 79
    .restart local v7       #_arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 81
    .local v8, _arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 83
    .local v9, _arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v10, 0x1

    .line 85
    .local v10, _arg6:Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 87
    .local v11, _arg7:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 89
    .local v12, _arg8:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 91
    .local v13, _arg9:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v14, 0x1

    .line 93
    .local v14, _arg10:Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v15, 0x1

    .line 95
    .local v15, _arg11:Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 97
    .local v16, _arg12:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    const/16 v17, 0x1

    .line 99
    .local v17, _arg13:Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    const/16 v18, 0x1

    .line 101
    .local v18, _arg14:Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    const/16 v19, 0x1

    .line 103
    .local v19, _arg15:Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 105
    .local v20, _arg16:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .local v21, _arg17:Ljava/lang/String;
    move-object/from16 v3, p0

    .line 106
    invoke-virtual/range {v3 .. v21}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->addNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v53

    .line 107
    .restart local v53       #_result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    move-object/from16 v0, p3

    move-wide/from16 v1, v53

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 109
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 83
    .end local v10           #_arg6:Z
    .end local v11           #_arg7:Ljava/lang/String;
    .end local v12           #_arg8:Ljava/lang/String;
    .end local v13           #_arg9:Ljava/lang/String;
    .end local v14           #_arg10:Z
    .end local v15           #_arg11:Z
    .end local v16           #_arg12:Ljava/lang/String;
    .end local v17           #_arg13:Z
    .end local v18           #_arg14:Z
    .end local v19           #_arg15:Z
    .end local v20           #_arg16:Ljava/lang/String;
    .end local v21           #_arg17:Ljava/lang/String;
    .end local v53           #_result:J
    :cond_0
    const/4 v10, 0x0

    goto :goto_1

    .line 91
    .restart local v10       #_arg6:Z
    .restart local v11       #_arg7:Ljava/lang/String;
    .restart local v12       #_arg8:Ljava/lang/String;
    .restart local v13       #_arg9:Ljava/lang/String;
    :cond_1
    const/4 v14, 0x0

    goto :goto_2

    .line 93
    .restart local v14       #_arg10:Z
    :cond_2
    const/4 v15, 0x0

    goto :goto_3

    .line 97
    .restart local v15       #_arg11:Z
    .restart local v16       #_arg12:Ljava/lang/String;
    :cond_3
    const/16 v17, 0x0

    goto :goto_4

    .line 99
    .restart local v17       #_arg13:Z
    :cond_4
    const/16 v18, 0x0

    goto :goto_5

    .line 101
    .restart local v18       #_arg14:Z
    :cond_5
    const/16 v19, 0x0

    goto :goto_6

    .line 113
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:Ljava/lang/String;
    .end local v8           #_arg4:I
    .end local v9           #_arg5:I
    .end local v10           #_arg6:Z
    .end local v11           #_arg7:Ljava/lang/String;
    .end local v12           #_arg8:Ljava/lang/String;
    .end local v13           #_arg9:Ljava/lang/String;
    .end local v14           #_arg10:Z
    .end local v15           #_arg11:Z
    .end local v16           #_arg12:Ljava/lang/String;
    .end local v17           #_arg13:Z
    .end local v18           #_arg14:Z
    :sswitch_3
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 117
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 119
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 121
    .restart local v6       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 123
    .restart local v7       #_arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 125
    .restart local v8       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 127
    .restart local v9       #_arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    const/4 v10, 0x1

    .line 129
    .restart local v10       #_arg6:Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 131
    .restart local v11       #_arg7:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 133
    .restart local v12       #_arg8:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 135
    .restart local v13       #_arg9:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    const/4 v14, 0x1

    .line 137
    .restart local v14       #_arg10:Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    const/4 v15, 0x1

    .line 139
    .restart local v15       #_arg11:Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 141
    .restart local v16       #_arg12:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_9

    const/16 v17, 0x1

    .line 143
    .restart local v17       #_arg13:Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_a

    const/16 v18, 0x1

    .line 145
    .restart local v18       #_arg14:Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b

    const/16 v19, 0x1

    .line 147
    .restart local v19       #_arg15:Z
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 149
    .restart local v20       #_arg16:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 151
    .restart local v21       #_arg17:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 153
    .local v22, _arg18:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 155
    .local v23, _arg19:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 157
    .local v24, _arg20:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 159
    .local v25, _arg21:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 161
    .local v26, _arg22:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 163
    .local v27, _arg23:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 165
    .local v28, _arg24:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_c

    const/16 v29, 0x1

    .line 167
    .local v29, _arg25:Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .line 169
    .local v30, _arg26:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 171
    .local v31, _arg27:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v32

    .line 173
    .local v32, _arg28:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .local v33, _arg29:Ljava/lang/String;
    move-object/from16 v3, p0

    .line 174
    invoke-virtual/range {v3 .. v33}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->addNewAccount_ex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;IIIIIIIZII[BLjava/lang/String;)J

    move-result-wide v53

    .line 175
    .restart local v53       #_result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    move-object/from16 v0, p3

    move-wide/from16 v1, v53

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 177
    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 178
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 127
    .end local v10           #_arg6:Z
    .end local v11           #_arg7:Ljava/lang/String;
    .end local v12           #_arg8:Ljava/lang/String;
    .end local v13           #_arg9:Ljava/lang/String;
    .end local v14           #_arg10:Z
    .end local v15           #_arg11:Z
    .end local v16           #_arg12:Ljava/lang/String;
    .end local v17           #_arg13:Z
    .end local v18           #_arg14:Z
    .end local v19           #_arg15:Z
    .end local v20           #_arg16:Ljava/lang/String;
    .end local v21           #_arg17:Ljava/lang/String;
    .end local v22           #_arg18:I
    .end local v23           #_arg19:I
    .end local v24           #_arg20:I
    .end local v25           #_arg21:I
    .end local v26           #_arg22:I
    .end local v27           #_arg23:I
    .end local v28           #_arg24:I
    .end local v29           #_arg25:Z
    .end local v30           #_arg26:I
    .end local v31           #_arg27:I
    .end local v32           #_arg28:[B
    .end local v33           #_arg29:Ljava/lang/String;
    .end local v53           #_result:J
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_7

    .line 135
    .restart local v10       #_arg6:Z
    .restart local v11       #_arg7:Ljava/lang/String;
    .restart local v12       #_arg8:Ljava/lang/String;
    .restart local v13       #_arg9:Ljava/lang/String;
    :cond_7
    const/4 v14, 0x0

    goto :goto_8

    .line 137
    .restart local v14       #_arg10:Z
    :cond_8
    const/4 v15, 0x0

    goto :goto_9

    .line 141
    .restart local v15       #_arg11:Z
    .restart local v16       #_arg12:Ljava/lang/String;
    :cond_9
    const/16 v17, 0x0

    goto :goto_a

    .line 143
    .restart local v17       #_arg13:Z
    :cond_a
    const/16 v18, 0x0

    goto :goto_b

    .line 145
    .restart local v18       #_arg14:Z
    :cond_b
    const/16 v19, 0x0

    goto :goto_c

    .line 165
    .restart local v19       #_arg15:Z
    .restart local v20       #_arg16:Ljava/lang/String;
    .restart local v21       #_arg17:Ljava/lang/String;
    .restart local v22       #_arg18:I
    .restart local v23       #_arg19:I
    .restart local v24       #_arg20:I
    .restart local v25       #_arg21:I
    .restart local v26       #_arg22:I
    .restart local v27       #_arg23:I
    .restart local v28       #_arg24:I
    :cond_c
    const/16 v29, 0x0

    goto :goto_d

    .line 182
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:Ljava/lang/String;
    .end local v8           #_arg4:I
    .end local v9           #_arg5:I
    .end local v10           #_arg6:Z
    .end local v11           #_arg7:Ljava/lang/String;
    .end local v12           #_arg8:Ljava/lang/String;
    .end local v13           #_arg9:Ljava/lang/String;
    .end local v14           #_arg10:Z
    .end local v15           #_arg11:Z
    .end local v16           #_arg12:Ljava/lang/String;
    .end local v17           #_arg13:Z
    .end local v18           #_arg14:Z
    .end local v19           #_arg15:Z
    .end local v20           #_arg16:Ljava/lang/String;
    .end local v21           #_arg17:Ljava/lang/String;
    .end local v22           #_arg18:I
    .end local v23           #_arg19:I
    .end local v24           #_arg20:I
    .end local v25           #_arg21:I
    .end local v26           #_arg22:I
    .end local v27           #_arg23:I
    .end local v28           #_arg24:I
    :sswitch_4
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 186
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 188
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 190
    .restart local v6       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 192
    .restart local v7       #_arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v39

    .local v39, _arg4:J
    move-object/from16 v34, p0

    move-object/from16 v35, v4

    move-object/from16 v36, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    .line 193
    invoke-virtual/range {v34 .. v40}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setAccountBaseParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v53

    .line 194
    .restart local v53       #_result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    move-object/from16 v0, p3

    move-wide/from16 v1, v53

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 196
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 200
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:Ljava/lang/String;
    .end local v39           #_arg4:J
    .end local v53           #_result:J
    :sswitch_5
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_d

    const/4 v4, 0x1

    .line 204
    .local v4, _arg0:Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v49

    .line 205
    .local v49, _arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v49

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setSSL(ZJ)Z

    move-result v53

    .line 206
    .local v53, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    if-eqz v53, :cond_e

    const/4 v3, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 202
    .end local v4           #_arg0:Z
    .end local v49           #_arg1:J
    .end local v53           #_result:Z
    :cond_d
    const/4 v4, 0x0

    goto :goto_e

    .line 207
    .restart local v4       #_arg0:Z
    .restart local v49       #_arg1:J
    .restart local v53       #_result:Z
    :cond_e
    const/4 v3, 0x0

    goto :goto_f

    .line 212
    .end local v4           #_arg0:Z
    .end local v49           #_arg1:J
    .end local v53           #_result:Z
    :sswitch_6
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f

    const/4 v4, 0x1

    .line 216
    .restart local v4       #_arg0:Z
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v49

    .line 217
    .restart local v49       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v49

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setAcceptAllCertificates(ZJ)Z

    move-result v53

    .line 218
    .restart local v53       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    if-eqz v53, :cond_10

    const/4 v3, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 214
    .end local v4           #_arg0:Z
    .end local v49           #_arg1:J
    .end local v53           #_result:Z
    :cond_f
    const/4 v4, 0x0

    goto :goto_10

    .line 219
    .restart local v4       #_arg0:Z
    .restart local v49       #_arg1:J
    .restart local v53       #_result:Z
    :cond_10
    const/4 v3, 0x0

    goto :goto_11

    .line 224
    .end local v4           #_arg0:Z
    .end local v49           #_arg1:J
    .end local v53           #_result:Z
    :sswitch_7
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    const/4 v4, 0x1

    .line 228
    .restart local v4       #_arg0:Z
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v49

    .line 229
    .restart local v49       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v49

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setAlwaysVibrateOnEmailNotification(ZJ)Z

    move-result v53

    .line 230
    .restart local v53       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    if-eqz v53, :cond_12

    const/4 v3, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 226
    .end local v4           #_arg0:Z
    .end local v49           #_arg1:J
    .end local v53           #_result:Z
    :cond_11
    const/4 v4, 0x0

    goto :goto_12

    .line 231
    .restart local v4       #_arg0:Z
    .restart local v49       #_arg1:J
    .restart local v53       #_result:Z
    :cond_12
    const/4 v3, 0x0

    goto :goto_13

    .line 236
    .end local v4           #_arg0:Z
    .end local v49           #_arg1:J
    .end local v53           #_result:Z
    :sswitch_8
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_13

    const/4 v4, 0x1

    .line 240
    .restart local v4       #_arg0:Z
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v49

    .line 241
    .restart local v49       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v49

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setSilentVibrateOnEmailNotification(ZJ)Z

    move-result v53

    .line 242
    .restart local v53       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    if-eqz v53, :cond_14

    const/4 v3, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 238
    .end local v4           #_arg0:Z
    .end local v49           #_arg1:J
    .end local v53           #_result:Z
    :cond_13
    const/4 v4, 0x0

    goto :goto_14

    .line 243
    .restart local v4       #_arg0:Z
    .restart local v49       #_arg1:J
    .restart local v53       #_result:Z
    :cond_14
    const/4 v3, 0x0

    goto :goto_15

    .line 248
    .end local v4           #_arg0:Z
    .end local v49           #_arg1:J
    .end local v53           #_result:Z
    :sswitch_9
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 252
    .local v4, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v49

    .line 253
    .restart local v49       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v49

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setPassword(Ljava/lang/String;J)Z

    move-result v53

    .line 254
    .restart local v53       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    if-eqz v53, :cond_15

    const/4 v3, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 255
    :cond_15
    const/4 v3, 0x0

    goto :goto_16

    .line 260
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v49           #_arg1:J
    .end local v53           #_result:Z
    :sswitch_a
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 264
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v49

    .line 265
    .restart local v49       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v49

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setProtocolVersion(Ljava/lang/String;J)Z

    move-result v53

    .line 266
    .restart local v53       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    if-eqz v53, :cond_16

    const/4 v3, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 267
    :cond_16
    const/4 v3, 0x0

    goto :goto_17

    .line 272
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v49           #_arg1:J
    .end local v53           #_result:Z
    :sswitch_b
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 276
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v49

    .line 277
    .restart local v49       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v49

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setSignature(Ljava/lang/String;J)Z

    move-result v53

    .line 278
    .restart local v53       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    if-eqz v53, :cond_17

    const/4 v3, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 279
    :cond_17
    const/4 v3, 0x0

    goto :goto_18

    .line 284
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v49           #_arg1:J
    .end local v53           #_result:Z
    :sswitch_c
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 288
    .local v4, _arg0:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 290
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v51

    .line 291
    .local v51, _arg2:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v51

    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setClientAuthCert([BLjava/lang/String;J)V

    .line 292
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 297
    .end local v4           #_arg0:[B
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v51           #_arg2:J
    :sswitch_d
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 301
    .local v4, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v49

    .line 302
    .restart local v49       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v49

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setPastDaysToSync(IJ)Z

    move-result v53

    .line 303
    .restart local v53       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    if-eqz v53, :cond_18

    const/4 v3, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 304
    :cond_18
    const/4 v3, 0x0

    goto :goto_19

    .line 309
    .end local v4           #_arg0:I
    .end local v49           #_arg1:J
    .end local v53           #_result:Z
    :sswitch_e
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 313
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v49

    .line 314
    .restart local v49       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v49

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setSyncInterval(IJ)Z

    move-result v53

    .line 315
    .restart local v53       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    if-eqz v53, :cond_19

    const/4 v3, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 316
    :cond_19
    const/4 v3, 0x0

    goto :goto_1a

    .line 321
    .end local v4           #_arg0:I
    .end local v49           #_arg1:J
    .end local v53           #_result:Z
    :sswitch_f
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 325
    .local v4, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v49

    .line 326
    .restart local v49       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v49

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setSenderName(Ljava/lang/String;J)Z

    move-result v53

    .line 327
    .restart local v53       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    if-eqz v53, :cond_1a

    const/4 v3, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 328
    :cond_1a
    const/4 v3, 0x0

    goto :goto_1b

    .line 333
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v49           #_arg1:J
    .end local v53           #_result:Z
    :sswitch_10
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v47

    .line 336
    .local v47, _arg0:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v47

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setAsDefaultAccount(J)Z

    move-result v53

    .line 337
    .restart local v53       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    if-eqz v53, :cond_1b

    const/4 v3, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 338
    :cond_1b
    const/4 v3, 0x0

    goto :goto_1c

    .line 343
    .end local v47           #_arg0:J
    .end local v53           #_result:Z
    :sswitch_11
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 347
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v49

    .line 348
    .restart local v49       #_arg1:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v49

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setAccountName(Ljava/lang/String;J)Z

    move-result v53

    .line 349
    .restart local v53       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    if-eqz v53, :cond_1c

    const/4 v3, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 350
    :cond_1c
    const/4 v3, 0x0

    goto :goto_1d

    .line 355
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v49           #_arg1:J
    .end local v53           #_result:Z
    :sswitch_12
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 359
    .restart local v4       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 361
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 362
    .restart local v6       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v53

    .line 363
    .local v53, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    move-object/from16 v0, p3

    move-wide/from16 v1, v53

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 365
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 369
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v53           #_result:J
    :sswitch_13
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v47

    .line 372
    .restart local v47       #_arg0:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v47

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->getAccountDetails(J)Landroid/app/enterprise/Account;

    move-result-object v53

    .line 373
    .local v53, _result:Landroid/app/enterprise/Account;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    if-eqz v53, :cond_1d

    .line 375
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    const/4 v3, 0x1

    move-object/from16 v0, v53

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/app/enterprise/Account;->writeToParcel(Landroid/os/Parcel;I)V

    .line 381
    :goto_1e
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 379
    :cond_1d
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1e

    .line 385
    .end local v47           #_arg0:J
    .end local v53           #_result:Landroid/app/enterprise/Account;
    :sswitch_14
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v47

    .line 388
    .restart local v47       #_arg0:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v47

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->deleteAccount(J)Z

    move-result v53

    .line 389
    .local v53, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    if-eqz v53, :cond_1e

    const/4 v3, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 390
    :cond_1e
    const/4 v3, 0x0

    goto :goto_1f

    .line 395
    .end local v47           #_arg0:J
    .end local v53           #_result:Z
    :sswitch_15
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->sendAccountsChangedBroadcast()V

    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 402
    :sswitch_16
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 406
    .local v4, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 408
    .local v5, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 410
    .local v6, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v45

    .local v45, _arg3:J
    move-object/from16 v41, p0

    move/from16 v42, v4

    move/from16 v43, v5

    move/from16 v44, v6

    .line 411
    invoke-virtual/range {v41 .. v46}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setSyncPeakTimings(IIIJ)Z

    move-result v53

    .line 412
    .restart local v53       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    if-eqz v53, :cond_1f

    const/4 v3, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 413
    :cond_1f
    const/4 v3, 0x0

    goto :goto_20

    .line 418
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    .end local v45           #_arg3:J
    .end local v53           #_result:Z
    :sswitch_17
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 422
    .restart local v4       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 424
    .restart local v5       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 426
    .restart local v6       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v45

    .restart local v45       #_arg3:J
    move-object/from16 v41, p0

    move/from16 v42, v4

    move/from16 v43, v5

    move/from16 v44, v6

    .line 427
    invoke-virtual/range {v41 .. v46}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setSyncSchedules(IIIJ)Z

    move-result v53

    .line 428
    .restart local v53       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    if-eqz v53, :cond_20

    const/4 v3, 0x1

    :goto_21
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 429
    :cond_20
    const/4 v3, 0x0

    goto :goto_21

    .line 434
    .end local v4           #_arg0:I
    .end local v5           #_arg1:I
    .end local v6           #_arg2:I
    .end local v45           #_arg3:J
    .end local v53           #_result:Z
    :sswitch_18
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_21

    const/4 v4, 0x1

    .line 438
    .local v4, _arg0:Z
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_22

    const/4 v5, 0x1

    .line 440
    .local v5, _arg1:Z
    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_23

    const/4 v6, 0x1

    .line 442
    .local v6, _arg2:Z
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_24

    const/4 v7, 0x1

    .line 444
    .local v7, _arg3:Z
    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v39

    .restart local v39       #_arg4:J
    move-object/from16 v34, p0

    move/from16 v35, v4

    move/from16 v36, v5

    move/from16 v37, v6

    move/from16 v38, v7

    .line 445
    invoke-virtual/range {v34 .. v40}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setDataSyncs(ZZZZJ)Z

    move-result v53

    .line 446
    .restart local v53       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    if-eqz v53, :cond_25

    const/4 v3, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 436
    .end local v4           #_arg0:Z
    .end local v5           #_arg1:Z
    .end local v6           #_arg2:Z
    .end local v7           #_arg3:Z
    .end local v39           #_arg4:J
    .end local v53           #_result:Z
    :cond_21
    const/4 v4, 0x0

    goto :goto_22

    .line 438
    .restart local v4       #_arg0:Z
    :cond_22
    const/4 v5, 0x0

    goto :goto_23

    .line 440
    .restart local v5       #_arg1:Z
    :cond_23
    const/4 v6, 0x0

    goto :goto_24

    .line 442
    .restart local v6       #_arg2:Z
    :cond_24
    const/4 v7, 0x0

    goto :goto_25

    .line 447
    .restart local v7       #_arg3:Z
    .restart local v39       #_arg4:J
    .restart local v53       #_result:Z
    :cond_25
    const/4 v3, 0x0

    goto :goto_26

    .line 452
    .end local v4           #_arg0:Z
    .end local v5           #_arg1:Z
    .end local v6           #_arg2:Z
    .end local v7           #_arg3:Z
    .end local v39           #_arg4:J
    .end local v53           #_result:Z
    :sswitch_19
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->getAllEASAccounts()[Landroid/app/enterprise/Account;

    move-result-object v53

    .line 454
    .local v53, _result:[Landroid/app/enterprise/Account;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    const/4 v3, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v53

    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 456
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 460
    .end local v53           #_result:[Landroid/app/enterprise/Account;
    :sswitch_1a
    const-string v3, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->getDeviceId()Ljava/lang/String;

    move-result-object v53

    .line 462
    .local v53, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    move-object/from16 v0, p3

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 464
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 42
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
