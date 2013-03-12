.class public abstract Lcom/android/internal/widget/ILockSettings$Stub;
.super Landroid/os/Binder;
.source "ILockSettings.java"

# interfaces
.implements Lcom/android/internal/widget/ILockSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ILockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ILockSettings$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.widget.ILockSettings"

.field static final TRANSACTION_checkPassword:I = 0xb

.field static final TRANSACTION_checkPattern:I = 0x8

.field static final TRANSACTION_checkSparePassword:I = 0x13

.field static final TRANSACTION_getBoolean:I = 0x4

.field static final TRANSACTION_getLockPasswordHashSize:I = 0xf

.field static final TRANSACTION_getLong:I = 0x5

.field static final TRANSACTION_getSignatureInfo:I = 0xe

.field static final TRANSACTION_getSparePasswordHashSize:I = 0x10

.field static final TRANSACTION_getString:I = 0x6

.field static final TRANSACTION_havePassword:I = 0x11

.field static final TRANSACTION_havePattern:I = 0x9

.field static final TRANSACTION_haveSignature:I = 0xc

.field static final TRANSACTION_haveSparePassword:I = 0x14

.field static final TRANSACTION_removeUser:I = 0x15

.field static final TRANSACTION_setBoolean:I = 0x1

.field static final TRANSACTION_setLockPassword:I = 0xa

.field static final TRANSACTION_setLockPattern:I = 0x7

.field static final TRANSACTION_setLockSparePassword:I = 0x12

.field static final TRANSACTION_setLong:I = 0x2

.field static final TRANSACTION_setSignatureInfo:I = 0xd

.field static final TRANSACTION_setString:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;
    .locals 2
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "com.android.internal.widget.ILockSettings"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/widget/ILockSettings;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/android/internal/widget/ILockSettings;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/widget/ILockSettings$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 287
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 43
    :sswitch_0
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v8, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    move v1, v6

    .line 54
    .local v1, _arg1:Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 55
    .local v3, _arg2:I
    invoke-virtual {p0, v0, v1, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->setBoolean(Ljava/lang/String;ZI)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v1           #_arg1:Z
    .end local v3           #_arg2:I
    :cond_0
    move v1, v7

    .line 52
    goto :goto_1

    .line 61
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 65
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 67
    .local v1, _arg1:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 68
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->setLong(Ljava/lang/String;JI)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 74
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:J
    .end local v3           #_arg2:I
    :sswitch_3
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 81
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v0, v1, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 87
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    :sswitch_4
    const-string v8, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2

    move v1, v6

    .line 93
    .local v1, _arg1:Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 94
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v0, v1, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v4

    .line 95
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v4, :cond_1

    move v7, v6

    :cond_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v1           #_arg1:Z
    .end local v3           #_arg2:I
    .end local v4           #_result:Z
    :cond_2
    move v1, v7

    .line 91
    goto :goto_2

    .line 101
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_5
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 107
    .local v1, _arg1:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 108
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    .line 109
    .local v4, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 115
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:J
    .end local v3           #_arg2:I
    .end local v4           #_result:J
    :sswitch_6
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 122
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v0, v1, v3}, Lcom/android/internal/widget/ILockSettings$Stub;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 129
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    .end local v4           #_result:Ljava/lang/String;
    :sswitch_7
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 133
    .local v0, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 134
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockPattern([BI)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 140
    .end local v0           #_arg0:[B
    .end local v1           #_arg1:I
    :sswitch_8
    const-string v8, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 144
    .restart local v0       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 145
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->checkPattern([BI)Z

    move-result v4

    .line 146
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v4, :cond_3

    move v7, v6

    :cond_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 152
    .end local v0           #_arg0:[B
    .end local v1           #_arg1:I
    .end local v4           #_result:Z
    :sswitch_9
    const-string v8, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 155
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->havePattern(I)Z

    move-result v4

    .line 156
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v4, :cond_4

    move v7, v6

    :cond_4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 162
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_a
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 166
    .local v0, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 167
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockPassword([BI)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 173
    .end local v0           #_arg0:[B
    .end local v1           #_arg1:I
    :sswitch_b
    const-string v8, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 177
    .restart local v0       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 178
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->checkPassword([BI)Z

    move-result v4

    .line 179
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    if-eqz v4, :cond_5

    move v7, v6

    :cond_5
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 185
    .end local v0           #_arg0:[B
    .end local v1           #_arg1:I
    .end local v4           #_result:Z
    :sswitch_c
    const-string v8, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 188
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->haveSignature(I)Z

    move-result v4

    .line 189
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    if-eqz v4, :cond_6

    move v7, v6

    :cond_6
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 195
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_d
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 199
    .local v0, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 200
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setSignatureInfo([BI)V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 206
    .end local v0           #_arg0:[B
    .end local v1           #_arg1:I
    :sswitch_e
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 209
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->getSignatureInfo(I)[B

    move-result-object v4

    .line 210
    .local v4, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 216
    .end local v0           #_arg0:I
    .end local v4           #_result:[B
    :sswitch_f
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 219
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->getLockPasswordHashSize(I)I

    move-result v4

    .line 220
    .local v4, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 226
    .end local v0           #_arg0:I
    .end local v4           #_result:I
    :sswitch_10
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 229
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->getSparePasswordHashSize(I)I

    move-result v4

    .line 230
    .restart local v4       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 236
    .end local v0           #_arg0:I
    .end local v4           #_result:I
    :sswitch_11
    const-string v8, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 239
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->havePassword(I)Z

    move-result v4

    .line 240
    .local v4, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    if-eqz v4, :cond_7

    move v7, v6

    :cond_7
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 246
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_12
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 250
    .local v0, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 251
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->setLockSparePassword([BI)V

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 257
    .end local v0           #_arg0:[B
    .end local v1           #_arg1:I
    :sswitch_13
    const-string v8, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 261
    .restart local v0       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 262
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ILockSettings$Stub;->checkSparePassword([BI)Z

    move-result v4

    .line 263
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    if-eqz v4, :cond_8

    move v7, v6

    :cond_8
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 269
    .end local v0           #_arg0:[B
    .end local v1           #_arg1:I
    .end local v4           #_result:Z
    :sswitch_14
    const-string v8, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 272
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->haveSparePassword(I)Z

    move-result v4

    .line 273
    .restart local v4       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    if-eqz v4, :cond_9

    move v7, v6

    :cond_9
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 279
    .end local v0           #_arg0:I
    .end local v4           #_result:Z
    :sswitch_15
    const-string v7, "com.android.internal.widget.ILockSettings"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 282
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ILockSettings$Stub;->removeUser(I)V

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
