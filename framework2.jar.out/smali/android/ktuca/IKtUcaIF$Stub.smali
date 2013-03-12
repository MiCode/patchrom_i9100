.class public abstract Landroid/ktuca/IKtUcaIF$Stub;
.super Landroid/os/Binder;
.source "IKtUcaIF.java"

# interfaces
.implements Landroid/ktuca/IKtUcaIF;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ktuca/IKtUcaIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ktuca/IKtUcaIF$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.ktuca.IKtUcaIF"

.field static final TRANSACTION_KUCA_CHInit:I = 0x13

.field static final TRANSACTION_KUCA_Close:I = 0x10

.field static final TRANSACTION_KUCA_CloseT:I = 0x19

.field static final TRANSACTION_KUCA_KUH_Establish:I = 0x15

.field static final TRANSACTION_KUCA_KUH_Release:I = 0x16

.field static final TRANSACTION_KUCA_KUH_Transmit:I = 0x17

.field static final TRANSACTION_KUCA_Open:I = 0xe

.field static final TRANSACTION_KUCA_OpenT:I = 0x18

.field static final TRANSACTION_KUCA_Transmit:I = 0xf

.field static final TRANSACTION_KUCA_UCAVersion:I = 0x12

.field static final TRANSACTION_KUCA_getHandle:I = 0x3

.field static final TRANSACTION_KUCA_getICCID:I = 0x6

.field static final TRANSACTION_KUCA_getIMSI:I = 0x5

.field static final TRANSACTION_KUCA_getMDN:I = 0x8

.field static final TRANSACTION_KUCA_getMODEL:I = 0x9

.field static final TRANSACTION_KUCA_getMSISDN:I = 0x4

.field static final TRANSACTION_KUCA_getPUID:I = 0x7

.field static final TRANSACTION_KUCA_getPinStatus:I = 0xc

.field static final TRANSACTION_KUCA_getSIMInfo:I = 0xa

.field static final TRANSACTION_KUCA_getSimStatus:I = 0x11

.field static final TRANSACTION_KUCA_printCHInfo:I = 0x14

.field static final TRANSACTION_KUCA_usimAUTH:I = 0xb

.field static final TRANSACTION_KUCA_verifyPin:I = 0xd

.field static final TRANSACTION_getResource:I = 0x1

.field static final TRANSACTION_releaseResource:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p0, p0, v0}, Landroid/ktuca/IKtUcaIF$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/ktuca/IKtUcaIF;
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
    const-string v1, "android.ktuca.IKtUcaIF"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/ktuca/IKtUcaIF;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/ktuca/IKtUcaIF;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/ktuca/IKtUcaIF$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 12
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 645
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Landroid/ktuca/IKtUcaIF$Stub;->getResource()I

    move-result v10

    .line 49
    .local v10, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    const/4 v0, 0x1

    goto :goto_0

    .line 55
    .end local v10           #_result:I
    :sswitch_2
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Landroid/ktuca/IKtUcaIF$Stub;->releaseResource()I

    move-result v10

    .line 57
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    const/4 v0, 0x1

    goto :goto_0

    .line 63
    .end local v10           #_result:I
    :sswitch_3
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 67
    .local v1, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 69
    .local v2, _arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 71
    .local v3, _arg2:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 73
    .local v4, _arg3:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .local v5, _arg4:[I
    move-object v0, p0

    .line 74
    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getHandle([B[B[B[B[I)J

    move-result-wide v10

    .line 75
    .local v10, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 77
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 78
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 79
    const/4 v0, 0x1

    goto :goto_0

    .line 83
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[B
    .end local v4           #_arg3:[B
    .end local v5           #_arg4:[I
    .end local v10           #_result:J
    :sswitch_4
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 87
    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 88
    .local v6, _arg1_length:I
    if-gez v6, :cond_0

    .line 89
    const/4 v2, 0x0

    .line 95
    .restart local v2       #_arg1:[B
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 96
    .local v7, _arg2_length:I
    if-gez v7, :cond_1

    .line 97
    const/4 v3, 0x0

    .line 103
    .local v3, _arg2:[I
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 105
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .local v5, _arg4:[B
    move-object v0, p0

    .line 106
    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getMSISDN([B[B[II[B)J

    move-result-wide v10

    .line 107
    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 109
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 110
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 111
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 92
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:[B
    .end local v7           #_arg2_length:I
    .end local v10           #_result:J
    :cond_0
    new-array v2, v6, [B

    .restart local v2       #_arg1:[B
    goto :goto_1

    .line 100
    .restart local v7       #_arg2_length:I
    :cond_1
    new-array v3, v7, [I

    .restart local v3       #_arg2:[I
    goto :goto_2

    .line 115
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v6           #_arg1_length:I
    .end local v7           #_arg2_length:I
    :sswitch_5
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 119
    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 120
    .restart local v6       #_arg1_length:I
    if-gez v6, :cond_2

    .line 121
    const/4 v2, 0x0

    .line 127
    .restart local v2       #_arg1:[B
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 128
    .restart local v7       #_arg2_length:I
    if-gez v7, :cond_3

    .line 129
    const/4 v3, 0x0

    .line 135
    .restart local v3       #_arg2:[I
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 137
    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .restart local v5       #_arg4:[B
    move-object v0, p0

    .line 138
    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getIMSI([B[B[II[B)J

    move-result-wide v10

    .line 139
    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 141
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 142
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 143
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 124
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:[B
    .end local v7           #_arg2_length:I
    .end local v10           #_result:J
    :cond_2
    new-array v2, v6, [B

    .restart local v2       #_arg1:[B
    goto :goto_3

    .line 132
    .restart local v7       #_arg2_length:I
    :cond_3
    new-array v3, v7, [I

    .restart local v3       #_arg2:[I
    goto :goto_4

    .line 147
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v6           #_arg1_length:I
    .end local v7           #_arg2_length:I
    :sswitch_6
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 151
    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 152
    .restart local v6       #_arg1_length:I
    if-gez v6, :cond_4

    .line 153
    const/4 v2, 0x0

    .line 159
    .restart local v2       #_arg1:[B
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 160
    .restart local v7       #_arg2_length:I
    if-gez v7, :cond_5

    .line 161
    const/4 v3, 0x0

    .line 167
    .restart local v3       #_arg2:[I
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 169
    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .restart local v5       #_arg4:[B
    move-object v0, p0

    .line 170
    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getICCID([B[B[II[B)J

    move-result-wide v10

    .line 171
    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 173
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 174
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 175
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 156
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:[B
    .end local v7           #_arg2_length:I
    .end local v10           #_result:J
    :cond_4
    new-array v2, v6, [B

    .restart local v2       #_arg1:[B
    goto :goto_5

    .line 164
    .restart local v7       #_arg2_length:I
    :cond_5
    new-array v3, v7, [I

    .restart local v3       #_arg2:[I
    goto :goto_6

    .line 179
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v6           #_arg1_length:I
    .end local v7           #_arg2_length:I
    :sswitch_7
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 183
    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 184
    .restart local v6       #_arg1_length:I
    if-gez v6, :cond_6

    .line 185
    const/4 v2, 0x0

    .line 191
    .restart local v2       #_arg1:[B
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 192
    .restart local v7       #_arg2_length:I
    if-gez v7, :cond_7

    .line 193
    const/4 v3, 0x0

    .line 199
    .restart local v3       #_arg2:[I
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 201
    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .restart local v5       #_arg4:[B
    move-object v0, p0

    .line 202
    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getPUID([B[B[II[B)J

    move-result-wide v10

    .line 203
    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 205
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 206
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 207
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 188
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:[B
    .end local v7           #_arg2_length:I
    .end local v10           #_result:J
    :cond_6
    new-array v2, v6, [B

    .restart local v2       #_arg1:[B
    goto :goto_7

    .line 196
    .restart local v7       #_arg2_length:I
    :cond_7
    new-array v3, v7, [I

    .restart local v3       #_arg2:[I
    goto :goto_8

    .line 211
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v6           #_arg1_length:I
    .end local v7           #_arg2_length:I
    :sswitch_8
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 215
    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 216
    .restart local v6       #_arg1_length:I
    if-gez v6, :cond_8

    .line 217
    const/4 v2, 0x0

    .line 223
    .restart local v2       #_arg1:[B
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 224
    .restart local v7       #_arg2_length:I
    if-gez v7, :cond_9

    .line 225
    const/4 v3, 0x0

    .line 231
    .restart local v3       #_arg2:[I
    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 233
    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .restart local v5       #_arg4:[B
    move-object v0, p0

    .line 234
    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getMDN([B[B[II[B)J

    move-result-wide v10

    .line 235
    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 237
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 238
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 239
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 220
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:[B
    .end local v7           #_arg2_length:I
    .end local v10           #_result:J
    :cond_8
    new-array v2, v6, [B

    .restart local v2       #_arg1:[B
    goto :goto_9

    .line 228
    .restart local v7       #_arg2_length:I
    :cond_9
    new-array v3, v7, [I

    .restart local v3       #_arg2:[I
    goto :goto_a

    .line 243
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v6           #_arg1_length:I
    .end local v7           #_arg2_length:I
    :sswitch_9
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 247
    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 248
    .restart local v6       #_arg1_length:I
    if-gez v6, :cond_a

    .line 249
    const/4 v2, 0x0

    .line 255
    .restart local v2       #_arg1:[B
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 256
    .restart local v7       #_arg2_length:I
    if-gez v7, :cond_b

    .line 257
    const/4 v3, 0x0

    .line 263
    .restart local v3       #_arg2:[I
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 265
    .restart local v4       #_arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .restart local v5       #_arg4:[B
    move-object v0, p0

    .line 266
    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getMODEL([B[B[II[B)J

    move-result-wide v10

    .line 267
    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 269
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 270
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 271
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 252
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:[B
    .end local v7           #_arg2_length:I
    .end local v10           #_result:J
    :cond_a
    new-array v2, v6, [B

    .restart local v2       #_arg1:[B
    goto :goto_b

    .line 260
    .restart local v7       #_arg2_length:I
    :cond_b
    new-array v3, v7, [I

    .restart local v3       #_arg2:[I
    goto :goto_c

    .line 275
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v6           #_arg1_length:I
    .end local v7           #_arg2_length:I
    :sswitch_a
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 279
    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 280
    .restart local v6       #_arg1_length:I
    if-gez v6, :cond_c

    .line 281
    const/4 v2, 0x0

    .line 287
    .restart local v2       #_arg1:[B
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 288
    .restart local v7       #_arg2_length:I
    if-gez v7, :cond_d

    .line 289
    const/4 v3, 0x0

    .line 294
    .restart local v3       #_arg2:[I
    :goto_e
    invoke-virtual {p0, v1, v2, v3}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getSIMInfo([B[B[I)J

    move-result-wide v10

    .line 295
    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 297
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 298
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 299
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 284
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v7           #_arg2_length:I
    .end local v10           #_result:J
    :cond_c
    new-array v2, v6, [B

    .restart local v2       #_arg1:[B
    goto :goto_d

    .line 292
    .restart local v7       #_arg2_length:I
    :cond_d
    new-array v3, v7, [I

    .restart local v3       #_arg2:[I
    goto :goto_e

    .line 303
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v6           #_arg1_length:I
    .end local v7           #_arg2_length:I
    :sswitch_b
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 307
    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 309
    .restart local v2       #_arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 311
    .local v3, _arg2:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 312
    .local v8, _arg3_length:I
    if-gez v8, :cond_e

    .line 313
    const/4 v4, 0x0

    .line 319
    .local v4, _arg3:[B
    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 320
    .local v9, _arg4_length:I
    if-gez v9, :cond_f

    .line 321
    const/4 v5, 0x0

    .local v5, _arg4:[I
    :goto_10
    move-object v0, p0

    .line 326
    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_usimAUTH([B[B[B[B[I)J

    move-result-wide v10

    .line 327
    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 329
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 330
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 331
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 316
    .end local v4           #_arg3:[B
    .end local v5           #_arg4:[I
    .end local v9           #_arg4_length:I
    .end local v10           #_result:J
    :cond_e
    new-array v4, v8, [B

    .restart local v4       #_arg3:[B
    goto :goto_f

    .line 324
    .restart local v9       #_arg4_length:I
    :cond_f
    new-array v5, v9, [I

    .restart local v5       #_arg4:[I
    goto :goto_10

    .line 335
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[B
    .end local v4           #_arg3:[B
    .end local v5           #_arg4:[I
    .end local v8           #_arg3_length:I
    .end local v9           #_arg4_length:I
    :sswitch_c
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 339
    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 341
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 342
    .restart local v7       #_arg2_length:I
    if-gez v7, :cond_10

    .line 343
    const/4 v3, 0x0

    .line 349
    .restart local v3       #_arg2:[B
    :goto_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 350
    .restart local v8       #_arg3_length:I
    if-gez v8, :cond_11

    .line 351
    const/4 v4, 0x0

    .line 356
    .local v4, _arg3:[I
    :goto_12
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getPinStatus([BI[B[I)J

    move-result-wide v10

    .line 357
    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 359
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 360
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 361
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 346
    .end local v3           #_arg2:[B
    .end local v4           #_arg3:[I
    .end local v8           #_arg3_length:I
    .end local v10           #_result:J
    :cond_10
    new-array v3, v7, [B

    .restart local v3       #_arg2:[B
    goto :goto_11

    .line 354
    .restart local v8       #_arg3_length:I
    :cond_11
    new-array v4, v8, [I

    .restart local v4       #_arg3:[I
    goto :goto_12

    .line 365
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:I
    .end local v3           #_arg2:[B
    .end local v4           #_arg3:[I
    .end local v7           #_arg2_length:I
    .end local v8           #_arg3_length:I
    :sswitch_d
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 369
    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 371
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 373
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 374
    .restart local v8       #_arg3_length:I
    if-gez v8, :cond_12

    .line 375
    const/4 v4, 0x0

    .line 381
    .local v4, _arg3:[B
    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 382
    .restart local v9       #_arg4_length:I
    if-gez v9, :cond_13

    .line 383
    const/4 v5, 0x0

    .restart local v5       #_arg4:[I
    :goto_14
    move-object v0, p0

    .line 388
    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_verifyPin([BILjava/lang/String;[B[I)J

    move-result-wide v10

    .line 389
    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 391
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 392
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 393
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 378
    .end local v4           #_arg3:[B
    .end local v5           #_arg4:[I
    .end local v9           #_arg4_length:I
    .end local v10           #_result:J
    :cond_12
    new-array v4, v8, [B

    .restart local v4       #_arg3:[B
    goto :goto_13

    .line 386
    .restart local v9       #_arg4_length:I
    :cond_13
    new-array v5, v9, [I

    .restart local v5       #_arg4:[I
    goto :goto_14

    .line 397
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:[B
    .end local v5           #_arg4:[I
    .end local v8           #_arg3_length:I
    .end local v9           #_arg4_length:I
    :sswitch_e
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 401
    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 402
    .restart local v6       #_arg1_length:I
    if-gez v6, :cond_14

    .line 403
    const/4 v2, 0x0

    .line 409
    .local v2, _arg1:[B
    :goto_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 410
    .restart local v7       #_arg2_length:I
    if-gez v7, :cond_15

    .line 411
    const/4 v3, 0x0

    .line 416
    .local v3, _arg2:[I
    :goto_16
    invoke-virtual {p0, v1, v2, v3}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_Open([B[B[I)J

    move-result-wide v10

    .line 417
    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 419
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 420
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 421
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 406
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v7           #_arg2_length:I
    .end local v10           #_result:J
    :cond_14
    new-array v2, v6, [B

    .restart local v2       #_arg1:[B
    goto :goto_15

    .line 414
    .restart local v7       #_arg2_length:I
    :cond_15
    new-array v3, v7, [I

    .restart local v3       #_arg2:[I
    goto :goto_16

    .line 425
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v6           #_arg1_length:I
    .end local v7           #_arg2_length:I
    :sswitch_f
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 429
    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 431
    .restart local v2       #_arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 433
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 434
    .restart local v8       #_arg3_length:I
    if-gez v8, :cond_16

    .line 435
    const/4 v4, 0x0

    .line 441
    .restart local v4       #_arg3:[B
    :goto_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 442
    .restart local v9       #_arg4_length:I
    if-gez v9, :cond_17

    .line 443
    const/4 v5, 0x0

    .restart local v5       #_arg4:[I
    :goto_18
    move-object v0, p0

    .line 448
    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_Transmit([B[BI[B[I)J

    move-result-wide v10

    .line 449
    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 451
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 452
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 453
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 438
    .end local v4           #_arg3:[B
    .end local v5           #_arg4:[I
    .end local v9           #_arg4_length:I
    .end local v10           #_result:J
    :cond_16
    new-array v4, v8, [B

    .restart local v4       #_arg3:[B
    goto :goto_17

    .line 446
    .restart local v9       #_arg4_length:I
    :cond_17
    new-array v5, v9, [I

    .restart local v5       #_arg4:[I
    goto :goto_18

    .line 457
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:I
    .end local v4           #_arg3:[B
    .end local v5           #_arg4:[I
    .end local v8           #_arg3_length:I
    .end local v9           #_arg4_length:I
    :sswitch_10
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 461
    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 462
    .local v2, _arg1:B
    invoke-virtual {p0, v1, v2}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_Close([BB)J

    move-result-wide v10

    .line 463
    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 465
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 469
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:B
    .end local v10           #_result:J
    :sswitch_11
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 473
    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 474
    .restart local v6       #_arg1_length:I
    if-gez v6, :cond_18

    .line 475
    const/4 v2, 0x0

    .line 480
    .local v2, _arg1:[B
    :goto_19
    invoke-virtual {p0, v1, v2}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_getSimStatus([B[B)J

    move-result-wide v10

    .line 481
    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 483
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 484
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 478
    .end local v2           #_arg1:[B
    .end local v10           #_result:J
    :cond_18
    new-array v2, v6, [B

    .restart local v2       #_arg1:[B
    goto :goto_19

    .line 488
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v6           #_arg1_length:I
    :sswitch_12
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 492
    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 493
    .restart local v6       #_arg1_length:I
    if-gez v6, :cond_19

    .line 494
    const/4 v2, 0x0

    .line 500
    .restart local v2       #_arg1:[B
    :goto_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 501
    .restart local v7       #_arg2_length:I
    if-gez v7, :cond_1a

    .line 502
    const/4 v3, 0x0

    .line 507
    .local v3, _arg2:[I
    :goto_1b
    invoke-virtual {p0, v1, v2, v3}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_UCAVersion([B[B[I)J

    move-result-wide v10

    .line 508
    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 510
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 511
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 512
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 497
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v7           #_arg2_length:I
    .end local v10           #_result:J
    :cond_19
    new-array v2, v6, [B

    .restart local v2       #_arg1:[B
    goto :goto_1a

    .line 505
    .restart local v7       #_arg2_length:I
    :cond_1a
    new-array v3, v7, [I

    .restart local v3       #_arg2:[I
    goto :goto_1b

    .line 516
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v6           #_arg1_length:I
    .end local v7           #_arg2_length:I
    :sswitch_13
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 520
    .local v1, _arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 521
    .restart local v6       #_arg1_length:I
    if-gez v6, :cond_1b

    .line 522
    const/4 v2, 0x0

    .line 528
    .restart local v2       #_arg1:[B
    :goto_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 529
    .restart local v7       #_arg2_length:I
    if-gez v7, :cond_1c

    .line 530
    const/4 v3, 0x0

    .line 535
    .restart local v3       #_arg2:[I
    :goto_1d
    invoke-virtual {p0, v1, v2, v3}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_CHInit(B[B[I)J

    move-result-wide v10

    .line 536
    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 538
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 539
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 540
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 525
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v7           #_arg2_length:I
    .end local v10           #_result:J
    :cond_1b
    new-array v2, v6, [B

    .restart local v2       #_arg1:[B
    goto :goto_1c

    .line 533
    .restart local v7       #_arg2_length:I
    :cond_1c
    new-array v3, v7, [I

    .restart local v3       #_arg2:[I
    goto :goto_1d

    .line 544
    .end local v1           #_arg0:B
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v6           #_arg1_length:I
    .end local v7           #_arg2_length:I
    :sswitch_14
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 547
    .restart local v1       #_arg0:B
    invoke-virtual {p0, v1}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_printCHInfo(B)J

    move-result-wide v10

    .line 548
    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 550
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 554
    .end local v1           #_arg0:B
    .end local v10           #_result:J
    :sswitch_15
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 557
    .restart local v1       #_arg0:B
    invoke-virtual {p0, v1}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_KUH_Establish(B)J

    move-result-wide v10

    .line 558
    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 560
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 564
    .end local v1           #_arg0:B
    .end local v10           #_result:J
    :sswitch_16
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 567
    .restart local v1       #_arg0:B
    invoke-virtual {p0, v1}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_KUH_Release(B)J

    move-result-wide v10

    .line 568
    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 570
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 574
    .end local v1           #_arg0:B
    .end local v10           #_result:J
    :sswitch_17
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 578
    .restart local v1       #_arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 580
    .restart local v2       #_arg1:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 582
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 583
    .restart local v8       #_arg3_length:I
    if-gez v8, :cond_1d

    .line 584
    const/4 v4, 0x0

    .line 590
    .restart local v4       #_arg3:[B
    :goto_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 591
    .restart local v9       #_arg4_length:I
    if-gez v9, :cond_1e

    .line 592
    const/4 v5, 0x0

    .restart local v5       #_arg4:[I
    :goto_1f
    move-object v0, p0

    .line 597
    invoke-virtual/range {v0 .. v5}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_KUH_Transmit(B[BI[B[I)J

    move-result-wide v10

    .line 598
    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 599
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 600
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 601
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 602
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 587
    .end local v4           #_arg3:[B
    .end local v5           #_arg4:[I
    .end local v9           #_arg4_length:I
    .end local v10           #_result:J
    :cond_1d
    new-array v4, v8, [B

    .restart local v4       #_arg3:[B
    goto :goto_1e

    .line 595
    .restart local v9       #_arg4_length:I
    :cond_1e
    new-array v5, v9, [I

    .restart local v5       #_arg4:[I
    goto :goto_1f

    .line 606
    .end local v1           #_arg0:B
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:I
    .end local v4           #_arg3:[B
    .end local v5           #_arg4:[I
    .end local v8           #_arg3_length:I
    .end local v9           #_arg4_length:I
    :sswitch_18
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 610
    .local v1, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 611
    .restart local v6       #_arg1_length:I
    if-gez v6, :cond_1f

    .line 612
    const/4 v2, 0x0

    .line 618
    .restart local v2       #_arg1:[B
    :goto_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 619
    .restart local v7       #_arg2_length:I
    if-gez v7, :cond_20

    .line 620
    const/4 v3, 0x0

    .line 625
    .local v3, _arg2:[I
    :goto_21
    invoke-virtual {p0, v1, v2, v3}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_OpenT([B[B[I)J

    move-result-wide v10

    .line 626
    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 628
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 629
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 630
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 615
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v7           #_arg2_length:I
    .end local v10           #_result:J
    :cond_1f
    new-array v2, v6, [B

    .restart local v2       #_arg1:[B
    goto :goto_20

    .line 623
    .restart local v7       #_arg2_length:I
    :cond_20
    new-array v3, v7, [I

    .restart local v3       #_arg2:[I
    goto :goto_21

    .line 634
    .end local v1           #_arg0:[B
    .end local v2           #_arg1:[B
    .end local v3           #_arg2:[I
    .end local v6           #_arg1_length:I
    .end local v7           #_arg2_length:I
    :sswitch_19
    const-string v0, "android.ktuca.IKtUcaIF"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 638
    .restart local v1       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 639
    .local v2, _arg1:B
    invoke-virtual {p0, v1, v2}, Landroid/ktuca/IKtUcaIF$Stub;->KUCA_CloseT([BB)J

    move-result-wide v10

    .line 640
    .restart local v10       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 642
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
