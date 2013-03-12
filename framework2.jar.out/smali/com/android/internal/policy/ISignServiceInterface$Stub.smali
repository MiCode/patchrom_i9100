.class public abstract Lcom/android/internal/policy/ISignServiceInterface$Stub;
.super Landroid/os/Binder;
.source "ISignServiceInterface.java"

# interfaces
.implements Lcom/android/internal/policy/ISignServiceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/ISignServiceInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/ISignServiceInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.policy.ISignServiceInterface"

.field static final TRANSACTION_addOnePoint:I = 0x5

.field static final TRANSACTION_addSignatureModel:I = 0xe

.field static final TRANSACTION_checkSignatureData:I = 0x17

.field static final TRANSACTION_delUser:I = 0xb

.field static final TRANSACTION_endOneStroke:I = 0x6

.field static final TRANSACTION_endWriting:I = 0x4

.field static final TRANSACTION_getEngineStatus:I = 0x2

.field static final TRANSACTION_getModelNum:I = 0xd

.field static final TRANSACTION_getRegisterViewH:I = 0x15

.field static final TRANSACTION_getRegisterViewW:I = 0x14

.field static final TRANSACTION_getRegisterViewX:I = 0x12

.field static final TRANSACTION_getRegisterViewY:I = 0x13

.field static final TRANSACTION_getVerifyScore:I = 0x16

.field static final TRANSACTION_initEngine:I = 0x1

.field static final TRANSACTION_isPenDown:I = 0xa

.field static final TRANSACTION_isWriting:I = 0x9

.field static final TRANSACTION_readSignatureData:I = 0x10

.field static final TRANSACTION_reset:I = 0x7

.field static final TRANSACTION_saveSignatureData:I = 0xf

.field static final TRANSACTION_setPointZero:I = 0x8

.field static final TRANSACTION_setRegisterViewXY:I = 0x11

.field static final TRANSACTION_startWriting:I = 0x3

.field static final TRANSACTION_verify:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/ISignServiceInterface;
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
    const-string v1, "com.android.internal.policy.ISignServiceInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/policy/ISignServiceInterface;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/android/internal/policy/ISignServiceInterface;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/android/internal/policy/ISignServiceInterface$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 260
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_0
    return v7

    .line 43
    :sswitch_0
    const-string v6, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v8, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->initEngine()Z

    move-result v5

    .line 50
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v5, :cond_0

    move v6, v7

    :cond_0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 56
    .end local v5           #_result:Z
    :sswitch_2
    const-string v8, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->getEngineStatus()Z

    move-result v5

    .line 58
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v5, :cond_1

    move v6, v7

    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 64
    .end local v5           #_result:Z
    :sswitch_3
    const-string v6, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 68
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 69
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->startWriting(II)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 75
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_4
    const-string v6, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->endWriting()V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 82
    :sswitch_5
    const-string v6, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 86
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 88
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 89
    .local v2, _arg2:J
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->addOnePoint(IIJ)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 95
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:J
    :sswitch_6
    const-string v6, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->endOneStroke()V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 102
    :sswitch_7
    const-string v6, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->reset()V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 109
    :sswitch_8
    const-string v6, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->setPointZero()V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 116
    :sswitch_9
    const-string v8, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->isWriting()Z

    move-result v5

    .line 118
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    if-eqz v5, :cond_2

    move v6, v7

    :cond_2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 124
    .end local v5           #_result:Z
    :sswitch_a
    const-string v8, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->isPenDown()Z

    move-result v5

    .line 126
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v5, :cond_3

    move v6, v7

    :cond_3
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 132
    .end local v5           #_result:Z
    :sswitch_b
    const-string v6, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 135
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->delUser(I)I

    move-result v5

    .line 136
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 142
    .end local v0           #_arg0:I
    .end local v5           #_result:I
    :sswitch_c
    const-string v6, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 146
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 147
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->verify(II)I

    move-result v5

    .line 148
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 154
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v5           #_result:I
    :sswitch_d
    const-string v6, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 157
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->getModelNum(I)I

    move-result v5

    .line 158
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 164
    .end local v0           #_arg0:I
    .end local v5           #_result:I
    :sswitch_e
    const-string v6, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 167
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->addSignatureModel(I)I

    move-result v5

    .line 168
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 174
    .end local v0           #_arg0:I
    .end local v5           #_result:I
    :sswitch_f
    const-string v6, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->saveSignatureData()I

    move-result v5

    .line 176
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 182
    .end local v5           #_result:I
    :sswitch_10
    const-string v6, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->readSignatureData(Ljava/lang/String;)I

    move-result v5

    .line 186
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 192
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v5           #_result:I
    :sswitch_11
    const-string v6, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 196
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 198
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 200
    .local v2, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 201
    .local v4, _arg3:I
    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->setRegisterViewXY(IIII)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 207
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    .end local v4           #_arg3:I
    :sswitch_12
    const-string v6, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->getRegisterViewX()I

    move-result v5

    .line 209
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 215
    .end local v5           #_result:I
    :sswitch_13
    const-string v6, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->getRegisterViewY()I

    move-result v5

    .line 217
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 223
    .end local v5           #_result:I
    :sswitch_14
    const-string v6, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->getRegisterViewW()I

    move-result v5

    .line 225
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 231
    .end local v5           #_result:I
    :sswitch_15
    const-string v6, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->getRegisterViewH()I

    move-result v5

    .line 233
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 239
    .end local v5           #_result:I
    :sswitch_16
    const-string v6, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 242
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->getVerifyScore(I)I

    move-result v5

    .line 243
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 249
    .end local v0           #_arg0:I
    .end local v5           #_result:I
    :sswitch_17
    const-string v6, "com.android.internal.policy.ISignServiceInterface"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 253
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 254
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/ISignServiceInterface$Stub;->checkSignatureData(II)I

    move-result v5

    .line 255
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
