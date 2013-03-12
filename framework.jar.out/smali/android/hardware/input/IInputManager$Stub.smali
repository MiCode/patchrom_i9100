.class public abstract Landroid/hardware/input/IInputManager$Stub;
.super Landroid/os/Binder;
.source "IInputManager.java"

# interfaces
.implements Landroid/hardware/input/IInputManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/IInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/IInputManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.input.IInputManager"

.field static final TRANSACTION_addKeyboardLayoutForInputDevice:I = 0xb

.field static final TRANSACTION_cancelVibrate:I = 0xf

.field static final TRANSACTION_getCurrentKeyboardLayoutForInputDevice:I = 0x8

.field static final TRANSACTION_getInputDevice:I = 0x1

.field static final TRANSACTION_getInputDeviceIds:I = 0x2

.field static final TRANSACTION_getKeyboardLayout:I = 0x7

.field static final TRANSACTION_getKeyboardLayouts:I = 0x6

.field static final TRANSACTION_getKeyboardLayoutsForInputDevice:I = 0xa

.field static final TRANSACTION_hasKeys:I = 0x3

.field static final TRANSACTION_injectInputEvent:I = 0x5

.field static final TRANSACTION_isShowHoveringPointer:I = 0x13

.field static final TRANSACTION_registerInputDevicesChangedListener:I = 0xd

.field static final TRANSACTION_removeKeyboardLayoutForInputDevice:I = 0xc

.field static final TRANSACTION_setCurrentKeyboardLayoutForInputDevice:I = 0x9

.field static final TRANSACTION_setLedState:I = 0x11

.field static final TRANSACTION_setSafetyZone:I = 0x12

.field static final TRANSACTION_setStartedShutdown:I = 0x10

.field static final TRANSACTION_tryPointerSpeed:I = 0x4

.field static final TRANSACTION_vibrate:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/input/IInputManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;
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
    const-string v1, "android.hardware.input.IInputManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/input/IInputManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/hardware/input/IInputManager;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/hardware/input/IInputManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/hardware/input/IInputManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 10
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
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 277
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 43
    :sswitch_0
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 51
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v7

    .line 52
    .local v7, _result:Landroid/view/InputDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v7, :cond_0

    .line 54
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    invoke-virtual {v7, p3, v8}, Landroid/view/InputDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 64
    .end local v1           #_arg0:I
    .end local v7           #_result:Landroid/view/InputDevice;
    :sswitch_2
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getInputDeviceIds()[I

    move-result-object v7

    .line 66
    .local v7, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 72
    .end local v7           #_result:[I
    :sswitch_3
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 76
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 78
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 80
    .local v3, _arg2:[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 81
    .local v6, _arg3_length:I
    if-gez v6, :cond_1

    .line 82
    const/4 v4, 0x0

    .line 87
    .local v4, _arg3:[Z
    :goto_1
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/input/IInputManager$Stub;->hasKeys(II[I[Z)Z

    move-result v7

    .line 88
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v7, :cond_2

    move v0, v8

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    goto :goto_0

    .line 85
    .end local v4           #_arg3:[Z
    .end local v7           #_result:Z
    :cond_1
    new-array v4, v6, [Z

    .restart local v4       #_arg3:[Z
    goto :goto_1

    .restart local v7       #_result:Z
    :cond_2
    move v0, v9

    .line 89
    goto :goto_2

    .line 95
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:[I
    .end local v4           #_arg3:[Z
    .end local v6           #_arg3_length:I
    .end local v7           #_result:Z
    :sswitch_4
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 98
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->tryPointerSpeed(I)V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 104
    .end local v1           #_arg0:I
    :sswitch_5
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 107
    sget-object v0, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputEvent;

    .line 113
    .local v1, _arg0:Landroid/view/InputEvent;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 114
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v7

    .line 115
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    if-eqz v7, :cond_3

    move v9, v8

    :cond_3
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 110
    .end local v1           #_arg0:Landroid/view/InputEvent;
    .end local v2           #_arg1:I
    .end local v7           #_result:Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/view/InputEvent;
    goto :goto_3

    .line 121
    .end local v1           #_arg0:Landroid/view/InputEvent;
    :sswitch_6
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;

    move-result-object v7

    .line 123
    .local v7, _result:[Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v7, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 129
    .end local v7           #_result:[Landroid/hardware/input/KeyboardLayout;
    :sswitch_7
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v7

    .line 133
    .local v7, _result:Landroid/hardware/input/KeyboardLayout;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    if-eqz v7, :cond_5

    .line 135
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    invoke-virtual {v7, p3, v8}, Landroid/hardware/input/KeyboardLayout;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 139
    :cond_5
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 145
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Landroid/hardware/input/KeyboardLayout;
    :sswitch_8
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 148
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->getCurrentKeyboardLayoutForInputDevice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 149
    .local v7, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 155
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:Ljava/lang/String;
    :sswitch_9
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 159
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->setCurrentKeyboardLayoutForInputDevice(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 166
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_a
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 169
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->getKeyboardLayoutsForInputDevice(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 170
    .local v7, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 176
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:[Ljava/lang/String;
    :sswitch_b
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 180
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 181
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->addKeyboardLayoutForInputDevice(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 187
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_c
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 191
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 192
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->removeKeyboardLayoutForInputDevice(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 198
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_d
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/IInputDevicesChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputDevicesChangedListener;

    move-result-object v1

    .line 201
    .local v1, _arg0:Landroid/hardware/input/IInputDevicesChangedListener;
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 207
    .end local v1           #_arg0:Landroid/hardware/input/IInputDevicesChangedListener;
    :sswitch_e
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 211
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    .line 213
    .local v2, _arg1:[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 215
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 216
    .local v4, _arg3:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/hardware/input/IInputManager$Stub;->vibrate(I[JILandroid/os/IBinder;)V

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 222
    .end local v1           #_arg0:I
    .end local v2           #_arg1:[J
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Landroid/os/IBinder;
    :sswitch_f
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 226
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 227
    .local v2, _arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Landroid/hardware/input/IInputManager$Stub;->cancelVibrate(ILandroid/os/IBinder;)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 233
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/os/IBinder;
    :sswitch_10
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    move v1, v8

    .line 236
    .local v1, _arg0:Z
    :goto_4
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->setStartedShutdown(Z)V

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    :cond_6
    move v1, v9

    .line 235
    goto :goto_4

    .line 242
    :sswitch_11
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    move v1, v8

    .line 245
    .restart local v1       #_arg0:Z
    :goto_5
    invoke-virtual {p0, v1}, Landroid/hardware/input/IInputManager$Stub;->setLedState(Z)I

    move-result v7

    .line 246
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v7           #_result:I
    :cond_7
    move v1, v9

    .line 244
    goto :goto_5

    .line 252
    :sswitch_12
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    move v1, v8

    .line 256
    .restart local v1       #_arg0:Z
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 258
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 260
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 262
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, _arg4:I
    move-object v0, p0

    .line 263
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/input/IInputManager$Stub;->setSafetyZone(ZIIII)Z

    move-result v7

    .line 264
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    if-eqz v7, :cond_8

    move v9, v8

    :cond_8
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    .end local v5           #_arg4:I
    .end local v7           #_result:Z
    :cond_9
    move v1, v9

    .line 254
    goto :goto_6

    .line 270
    :sswitch_13
    const-string v0, "android.hardware.input.IInputManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Landroid/hardware/input/IInputManager$Stub;->isShowHoveringPointer()Z

    move-result v7

    .line 272
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    if-eqz v7, :cond_a

    move v9, v8

    :cond_a
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
