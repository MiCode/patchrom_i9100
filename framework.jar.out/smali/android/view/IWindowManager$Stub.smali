.class public abstract Landroid/view/IWindowManager$Stub;
.super Landroid/os/Binder;
.source "IWindowManager.java"

# interfaces
.implements Landroid/view/IWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowManager"

.field static final TRANSACTION_addAppToken:I = 0x12

.field static final TRANSACTION_addWindowToken:I = 0x10

.field static final TRANSACTION_clearForcedDisplaySize:I = 0xb

.field static final TRANSACTION_closeSystemDialogs:I = 0x2f

.field static final TRANSACTION_disableKeyguard:I = 0x28

.field static final TRANSACTION_dismissKeyguard:I = 0x2e

.field static final TRANSACTION_executeAppTransition:I = 0x1c

.field static final TRANSACTION_exitKeyguardSecurely:I = 0x2a

.field static final TRANSACTION_freezeRotation:I = 0x3b

.field static final TRANSACTION_getAnimationScale:I = 0x30

.field static final TRANSACTION_getAnimationScales:I = 0x31

.field static final TRANSACTION_getAppOrientation:I = 0x15

.field static final TRANSACTION_getCurrentSizeRange:I = 0x9

.field static final TRANSACTION_getDisplaySize:I = 0x6

.field static final TRANSACTION_getMaximumSizeDimension:I = 0x8

.field static final TRANSACTION_getPendingAppTransition:I = 0x18

.field static final TRANSACTION_getPreferredOptionsPanelGravity:I = 0x3a

.field static final TRANSACTION_getRealDisplaySize:I = 0x7

.field static final TRANSACTION_getRotation:I = 0x38

.field static final TRANSACTION_hasNavigationBar:I = 0x40

.field static final TRANSACTION_hasSystemNavBar:I = 0xc

.field static final TRANSACTION_inKeyguardRestrictedInputMode:I = 0x2d

.field static final TRANSACTION_inputMethodClientHasFocus:I = 0x5

.field static final TRANSACTION_isKeyguardLocked:I = 0x2b

.field static final TRANSACTION_isKeyguardSecure:I = 0x2c

.field static final TRANSACTION_isNavigationBarVisible:I = 0x46

.field static final TRANSACTION_isSystemKeyEventRequested:I = 0x48

.field static final TRANSACTION_isViewServerRunning:I = 0x3

.field static final TRANSACTION_lockNow:I = 0x41

.field static final TRANSACTION_moveAppToken:I = 0x23

.field static final TRANSACTION_moveAppTokensToBottom:I = 0x25

.field static final TRANSACTION_moveAppTokensToTop:I = 0x24

.field static final TRANSACTION_openSession:I = 0x4

.field static final TRANSACTION_overridePendingAppTransition:I = 0x19

.field static final TRANSACTION_overridePendingAppTransitionScaleUp:I = 0x1a

.field static final TRANSACTION_overridePendingAppTransitionThumb:I = 0x1b

.field static final TRANSACTION_pauseKeyDispatching:I = 0xd

.field static final TRANSACTION_prepareAppTransition:I = 0x17

.field static final TRANSACTION_reenableKeyguard:I = 0x29

.field static final TRANSACTION_registerHoveringSpenCustomIcon:I = 0x42

.field static final TRANSACTION_reloadPointerIcon:I = 0x44

.field static final TRANSACTION_reloadPointerIconForBitmap:I = 0x45

.field static final TRANSACTION_removeAppToken:I = 0x22

.field static final TRANSACTION_removeHoveringSpenCustomIcon:I = 0x43

.field static final TRANSACTION_removeWindowToken:I = 0x11

.field static final TRANSACTION_requestSystemKeyEvent:I = 0x47

.field static final TRANSACTION_resumeKeyDispatching:I = 0xe

.field static final TRANSACTION_screenshotApplications:I = 0x3d

.field static final TRANSACTION_setAnimationScale:I = 0x32

.field static final TRANSACTION_setAnimationScales:I = 0x33

.field static final TRANSACTION_setAppGroupId:I = 0x13

.field static final TRANSACTION_setAppOrientation:I = 0x14

.field static final TRANSACTION_setAppStartingWindow:I = 0x1d

.field static final TRANSACTION_setAppVisibility:I = 0x1f

.field static final TRANSACTION_setAppWillBeHidden:I = 0x1e

.field static final TRANSACTION_setEventDispatching:I = 0xf

.field static final TRANSACTION_setFocusedApp:I = 0x16

.field static final TRANSACTION_setForcedDisplaySize:I = 0xa

.field static final TRANSACTION_setInTouchMode:I = 0x34

.field static final TRANSACTION_setNewConfiguration:I = 0x27

.field static final TRANSACTION_setStrictModeVisualIndicatorPreference:I = 0x36

.field static final TRANSACTION_showStrictModeViolation:I = 0x35

.field static final TRANSACTION_startAppFreezingScreen:I = 0x20

.field static final TRANSACTION_startViewServer:I = 0x1

.field static final TRANSACTION_statusBarVisibilityChanged:I = 0x3e

.field static final TRANSACTION_stopAppFreezingScreen:I = 0x21

.field static final TRANSACTION_stopViewServer:I = 0x2

.field static final TRANSACTION_thawRotation:I = 0x3c

.field static final TRANSACTION_updateOrientationFromAppTokens:I = 0x26

.field static final TRANSACTION_updateRotation:I = 0x37

.field static final TRANSACTION_waitForWindowDrawn:I = 0x3f

.field static final TRANSACTION_watchRotation:I = 0x39


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-string v1, "android.view.IWindowManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IWindowManager;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Landroid/view/IWindowManager;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Landroid/view/IWindowManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/view/IWindowManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
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
    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 886
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 48
    :sswitch_0
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    const/4 v1, 0x1

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 56
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->startViewServer(I)Z

    move-result v13

    .line 57
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v13, :cond_0

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    const/4 v1, 0x1

    goto :goto_0

    .line 58
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 63
    .end local v2           #_arg0:I
    .end local v13           #_result:Z
    :sswitch_2
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->stopViewServer()Z

    move-result v13

    .line 65
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-eqz v13, :cond_1

    const/4 v1, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    const/4 v1, 0x1

    goto :goto_0

    .line 66
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 71
    .end local v13           #_result:Z
    :sswitch_3
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isViewServerRunning()Z

    move-result v13

    .line 73
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v13, :cond_2

    const/4 v1, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    const/4 v1, 0x1

    goto :goto_0

    .line 74
    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    .line 79
    .end local v13           #_result:Z
    :sswitch_4
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v2

    .line 83
    .local v2, _arg0:Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v3

    .line 84
    .local v3, _arg1:Lcom/android/internal/view/IInputContext;
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->openSession(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;

    move-result-object v13

    .line 85
    .local v13, _result:Landroid/view/IWindowSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/view/IWindowSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 87
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 86
    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    .line 91
    .end local v2           #_arg0:Lcom/android/internal/view/IInputMethodClient;
    .end local v3           #_arg1:Lcom/android/internal/view/IInputContext;
    .end local v13           #_result:Landroid/view/IWindowSession;
    :sswitch_5
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v2

    .line 94
    .restart local v2       #_arg0:Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v13

    .line 95
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v13, :cond_4

    const/4 v1, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 96
    :cond_4
    const/4 v1, 0x0

    goto :goto_5

    .line 101
    .end local v2           #_arg0:Lcom/android/internal/view/IInputMethodClient;
    .end local v13           #_result:Z
    :sswitch_6
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 104
    .local v2, _arg0:Landroid/graphics/Point;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getDisplaySize(Landroid/graphics/Point;)V

    .line 105
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    if-eqz v2, :cond_5

    .line 107
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 113
    :goto_6
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 111
    :cond_5
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 117
    .end local v2           #_arg0:Landroid/graphics/Point;
    :sswitch_7
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 120
    .restart local v2       #_arg0:Landroid/graphics/Point;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getRealDisplaySize(Landroid/graphics/Point;)V

    .line 121
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    if-eqz v2, :cond_6

    .line 123
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 129
    :goto_7
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 127
    :cond_6
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 133
    .end local v2           #_arg0:Landroid/graphics/Point;
    :sswitch_8
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getMaximumSizeDimension()I

    move-result v13

    .line 135
    .local v13, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 141
    .end local v13           #_result:I
    :sswitch_9
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 145
    .restart local v2       #_arg0:Landroid/graphics/Point;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 146
    .local v3, _arg1:Landroid/graphics/Point;
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 147
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v2, :cond_7

    .line 149
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 155
    :goto_8
    if-eqz v3, :cond_8

    .line 156
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 162
    :goto_9
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 153
    :cond_7
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 160
    :cond_8
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 166
    .end local v2           #_arg0:Landroid/graphics/Point;
    .end local v3           #_arg1:Landroid/graphics/Point;
    :sswitch_a
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 170
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 171
    .local v3, _arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setForcedDisplaySize(II)V

    .line 172
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 177
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    :sswitch_b
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->clearForcedDisplaySize()V

    .line 179
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 184
    :sswitch_c
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->hasSystemNavBar()Z

    move-result v13

    .line 186
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    if-eqz v13, :cond_9

    const/4 v1, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 187
    :cond_9
    const/4 v1, 0x0

    goto :goto_a

    .line 192
    .end local v13           #_result:Z
    :sswitch_d
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 195
    .local v2, _arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->pauseKeyDispatching(Landroid/os/IBinder;)V

    .line 196
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 201
    .end local v2           #_arg0:Landroid/os/IBinder;
    :sswitch_e
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 204
    .restart local v2       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->resumeKeyDispatching(Landroid/os/IBinder;)V

    .line 205
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 210
    .end local v2           #_arg0:Landroid/os/IBinder;
    :sswitch_f
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    const/4 v2, 0x1

    .line 213
    .local v2, _arg0:Z
    :goto_b
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setEventDispatching(Z)V

    .line 214
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 212
    .end local v2           #_arg0:Z
    :cond_a
    const/4 v2, 0x0

    goto :goto_b

    .line 219
    :sswitch_10
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 223
    .local v2, _arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 224
    .restart local v3       #_arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->addWindowToken(Landroid/os/IBinder;I)V

    .line 225
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 230
    .end local v2           #_arg0:Landroid/os/IBinder;
    .end local v3           #_arg1:I
    :sswitch_11
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 233
    .restart local v2       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->removeWindowToken(Landroid/os/IBinder;)V

    .line 234
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 239
    .end local v2           #_arg0:Landroid/os/IBinder;
    :sswitch_12
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 243
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v3

    .line 245
    .local v3, _arg1:Landroid/view/IApplicationToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 247
    .local v4, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 249
    .local v5, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    const/4 v6, 0x1

    .local v6, _arg4:Z
    :goto_c
    move-object v1, p0

    .line 250
    invoke-virtual/range {v1 .. v6}, Landroid/view/IWindowManager$Stub;->addAppToken(ILandroid/view/IApplicationToken;IIZ)V

    .line 251
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 249
    .end local v6           #_arg4:Z
    :cond_b
    const/4 v6, 0x0

    goto :goto_c

    .line 256
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/view/IApplicationToken;
    .end local v4           #_arg2:I
    .end local v5           #_arg3:I
    :sswitch_13
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 260
    .local v2, _arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 261
    .local v3, _arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setAppGroupId(Landroid/os/IBinder;I)V

    .line 262
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 267
    .end local v2           #_arg0:Landroid/os/IBinder;
    .end local v3           #_arg1:I
    :sswitch_14
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v2

    .line 271
    .local v2, _arg0:Landroid/view/IApplicationToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 272
    .restart local v3       #_arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setAppOrientation(Landroid/view/IApplicationToken;I)V

    .line 273
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 278
    .end local v2           #_arg0:Landroid/view/IApplicationToken;
    .end local v3           #_arg1:I
    :sswitch_15
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v2

    .line 281
    .restart local v2       #_arg0:Landroid/view/IApplicationToken;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getAppOrientation(Landroid/view/IApplicationToken;)I

    move-result v13

    .line 282
    .local v13, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 288
    .end local v2           #_arg0:Landroid/view/IApplicationToken;
    .end local v13           #_result:I
    :sswitch_16
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 292
    .local v2, _arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    const/4 v3, 0x1

    .line 293
    .local v3, _arg1:Z
    :goto_d
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setFocusedApp(Landroid/os/IBinder;Z)V

    .line 294
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 292
    .end local v3           #_arg1:Z
    :cond_c
    const/4 v3, 0x0

    goto :goto_d

    .line 299
    .end local v2           #_arg0:Landroid/os/IBinder;
    :sswitch_17
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 303
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    const/4 v3, 0x1

    .line 304
    .restart local v3       #_arg1:Z
    :goto_e
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->prepareAppTransition(IZ)V

    .line 305
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 303
    .end local v3           #_arg1:Z
    :cond_d
    const/4 v3, 0x0

    goto :goto_e

    .line 310
    .end local v2           #_arg0:I
    :sswitch_18
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getPendingAppTransition()I

    move-result v13

    .line 312
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 318
    .end local v13           #_result:I
    :sswitch_19
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 324
    .local v3, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 326
    .restart local v4       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v5

    .line 327
    .local v5, _arg3:Landroid/os/IRemoteCallback;
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V

    .line 328
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 333
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v3           #_arg1:I
    .end local v4           #_arg2:I
    .end local v5           #_arg3:Landroid/os/IRemoteCallback;
    :sswitch_1a
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 337
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 339
    .restart local v3       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 341
    .restart local v4       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 342
    .local v5, _arg3:I
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionScaleUp(IIII)V

    .line 343
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 348
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v4           #_arg2:I
    .end local v5           #_arg3:I
    :sswitch_1b
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    .line 351
    sget-object v1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 357
    .local v2, _arg0:Landroid/graphics/Bitmap;
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 359
    .restart local v3       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 361
    .restart local v4       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v5

    .line 363
    .local v5, _arg3:Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    const/4 v6, 0x1

    .restart local v6       #_arg4:Z
    :goto_10
    move-object v1, p0

    .line 364
    invoke-virtual/range {v1 .. v6}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Z)V

    .line 365
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 354
    .end local v2           #_arg0:Landroid/graphics/Bitmap;
    .end local v3           #_arg1:I
    .end local v4           #_arg2:I
    .end local v5           #_arg3:Landroid/os/IRemoteCallback;
    .end local v6           #_arg4:Z
    :cond_e
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/graphics/Bitmap;
    goto :goto_f

    .line 363
    .restart local v3       #_arg1:I
    .restart local v4       #_arg2:I
    .restart local v5       #_arg3:Landroid/os/IRemoteCallback;
    :cond_f
    const/4 v6, 0x0

    goto :goto_10

    .line 370
    .end local v2           #_arg0:Landroid/graphics/Bitmap;
    .end local v3           #_arg1:I
    .end local v4           #_arg2:I
    .end local v5           #_arg3:Landroid/os/IRemoteCallback;
    :sswitch_1c
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->executeAppTransition()V

    .line 372
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 377
    :sswitch_1d
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 381
    .local v2, _arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 383
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 385
    .restart local v4       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    .line 386
    sget-object v1, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/CompatibilityInfo;

    .line 392
    .local v5, _arg3:Landroid/content/res/CompatibilityInfo;
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    .line 393
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 399
    .local v6, _arg4:Ljava/lang/CharSequence;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 401
    .local v7, _arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 403
    .local v8, _arg6:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 405
    .local v9, _arg7:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 407
    .local v10, _arg8:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12

    const/4 v11, 0x1

    .local v11, _arg9:Z
    :goto_13
    move-object v1, p0

    .line 408
    invoke-virtual/range {v1 .. v11}, Landroid/view/IWindowManager$Stub;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIILandroid/os/IBinder;Z)V

    .line 409
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 389
    .end local v5           #_arg3:Landroid/content/res/CompatibilityInfo;
    .end local v6           #_arg4:Ljava/lang/CharSequence;
    .end local v7           #_arg5:I
    .end local v8           #_arg6:I
    .end local v9           #_arg7:I
    .end local v10           #_arg8:Landroid/os/IBinder;
    .end local v11           #_arg9:Z
    :cond_10
    const/4 v5, 0x0

    .restart local v5       #_arg3:Landroid/content/res/CompatibilityInfo;
    goto :goto_11

    .line 396
    :cond_11
    const/4 v6, 0x0

    .restart local v6       #_arg4:Ljava/lang/CharSequence;
    goto :goto_12

    .line 407
    .restart local v7       #_arg5:I
    .restart local v8       #_arg6:I
    .restart local v9       #_arg7:I
    .restart local v10       #_arg8:Landroid/os/IBinder;
    :cond_12
    const/4 v11, 0x0

    goto :goto_13

    .line 414
    .end local v2           #_arg0:Landroid/os/IBinder;
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:I
    .end local v5           #_arg3:Landroid/content/res/CompatibilityInfo;
    .end local v6           #_arg4:Ljava/lang/CharSequence;
    .end local v7           #_arg5:I
    .end local v8           #_arg6:I
    .end local v9           #_arg7:I
    .end local v10           #_arg8:Landroid/os/IBinder;
    :sswitch_1e
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 417
    .restart local v2       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setAppWillBeHidden(Landroid/os/IBinder;)V

    .line 418
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 423
    .end local v2           #_arg0:Landroid/os/IBinder;
    :sswitch_1f
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 427
    .restart local v2       #_arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    const/4 v3, 0x1

    .line 428
    .local v3, _arg1:Z
    :goto_14
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 429
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 427
    .end local v3           #_arg1:Z
    :cond_13
    const/4 v3, 0x0

    goto :goto_14

    .line 434
    .end local v2           #_arg0:Landroid/os/IBinder;
    :sswitch_20
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 438
    .restart local v2       #_arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 439
    .local v3, _arg1:I
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->startAppFreezingScreen(Landroid/os/IBinder;I)V

    .line 440
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 445
    .end local v2           #_arg0:Landroid/os/IBinder;
    .end local v3           #_arg1:I
    :sswitch_21
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 449
    .restart local v2       #_arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_14

    const/4 v3, 0x1

    .line 450
    .local v3, _arg1:Z
    :goto_15
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->stopAppFreezingScreen(Landroid/os/IBinder;Z)V

    .line 451
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 449
    .end local v3           #_arg1:Z
    :cond_14
    const/4 v3, 0x0

    goto :goto_15

    .line 456
    .end local v2           #_arg0:Landroid/os/IBinder;
    :sswitch_22
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 459
    .restart local v2       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->removeAppToken(Landroid/os/IBinder;)V

    .line 460
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 465
    .end local v2           #_arg0:Landroid/os/IBinder;
    :sswitch_23
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 469
    .local v2, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 470
    .local v3, _arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->moveAppToken(ILandroid/os/IBinder;)V

    .line 471
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 476
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/os/IBinder;
    :sswitch_24
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createBinderArrayList()Ljava/util/ArrayList;

    move-result-object v12

    .line 479
    .local v12, _arg0:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p0, v12}, Landroid/view/IWindowManager$Stub;->moveAppTokensToTop(Ljava/util/List;)V

    .line 480
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 485
    .end local v12           #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    :sswitch_25
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createBinderArrayList()Ljava/util/ArrayList;

    move-result-object v12

    .line 488
    .restart local v12       #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p0, v12}, Landroid/view/IWindowManager$Stub;->moveAppTokensToBottom(Ljava/util/List;)V

    .line 489
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 494
    .end local v12           #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    :sswitch_26
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_15

    .line 497
    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    .line 503
    .local v2, _arg0:Landroid/content/res/Configuration;
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 504
    .restart local v3       #_arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v13

    .line 505
    .local v13, _result:Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    if-eqz v13, :cond_16

    .line 507
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 513
    :goto_17
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 500
    .end local v2           #_arg0:Landroid/content/res/Configuration;
    .end local v3           #_arg1:Landroid/os/IBinder;
    .end local v13           #_result:Landroid/content/res/Configuration;
    :cond_15
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/res/Configuration;
    goto :goto_16

    .line 511
    .restart local v3       #_arg1:Landroid/os/IBinder;
    .restart local v13       #_result:Landroid/content/res/Configuration;
    :cond_16
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .line 517
    .end local v2           #_arg0:Landroid/content/res/Configuration;
    .end local v3           #_arg1:Landroid/os/IBinder;
    .end local v13           #_result:Landroid/content/res/Configuration;
    :sswitch_27
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_17

    .line 520
    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    .line 525
    .restart local v2       #_arg0:Landroid/content/res/Configuration;
    :goto_18
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setNewConfiguration(Landroid/content/res/Configuration;)V

    .line 526
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 523
    .end local v2           #_arg0:Landroid/content/res/Configuration;
    :cond_17
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/content/res/Configuration;
    goto :goto_18

    .line 531
    .end local v2           #_arg0:Landroid/content/res/Configuration;
    :sswitch_28
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 535
    .local v2, _arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 536
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 537
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 542
    .end local v2           #_arg0:Landroid/os/IBinder;
    .end local v3           #_arg1:Ljava/lang/String;
    :sswitch_29
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 545
    .restart local v2       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->reenableKeyguard(Landroid/os/IBinder;)V

    .line 546
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 551
    .end local v2           #_arg0:Landroid/os/IBinder;
    :sswitch_2a
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IOnKeyguardExitResult$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IOnKeyguardExitResult;

    move-result-object v2

    .line 554
    .local v2, _arg0:Landroid/view/IOnKeyguardExitResult;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V

    .line 555
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 560
    .end local v2           #_arg0:Landroid/view/IOnKeyguardExitResult;
    :sswitch_2b
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isKeyguardLocked()Z

    move-result v13

    .line 562
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    if-eqz v13, :cond_18

    const/4 v1, 0x1

    :goto_19
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 563
    :cond_18
    const/4 v1, 0x0

    goto :goto_19

    .line 568
    .end local v13           #_result:Z
    :sswitch_2c
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isKeyguardSecure()Z

    move-result v13

    .line 570
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    if-eqz v13, :cond_19

    const/4 v1, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 572
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 571
    :cond_19
    const/4 v1, 0x0

    goto :goto_1a

    .line 576
    .end local v13           #_result:Z
    :sswitch_2d
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->inKeyguardRestrictedInputMode()Z

    move-result v13

    .line 578
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    if-eqz v13, :cond_1a

    const/4 v1, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 580
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 579
    :cond_1a
    const/4 v1, 0x0

    goto :goto_1b

    .line 584
    .end local v13           #_result:Z
    :sswitch_2e
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->dismissKeyguard()V

    .line 586
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 591
    :sswitch_2f
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 594
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    .line 595
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 600
    .end local v2           #_arg0:Ljava/lang/String;
    :sswitch_30
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 603
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getAnimationScale(I)F

    move-result v13

    .line 604
    .local v13, _result:F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeFloat(F)V

    .line 606
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 610
    .end local v2           #_arg0:I
    .end local v13           #_result:F
    :sswitch_31
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getAnimationScales()[F

    move-result-object v13

    .line 612
    .local v13, _result:[F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 614
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 618
    .end local v13           #_result:[F
    :sswitch_32
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 620
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 622
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 623
    .local v3, _arg1:F
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setAnimationScale(IF)V

    .line 624
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 629
    .end local v2           #_arg0:I
    .end local v3           #_arg1:F
    :sswitch_33
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 631
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    .line 632
    .local v2, _arg0:[F
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setAnimationScales([F)V

    .line 633
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 638
    .end local v2           #_arg0:[F
    :sswitch_34
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 640
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v2, 0x1

    .line 641
    .local v2, _arg0:Z
    :goto_1c
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setInTouchMode(Z)V

    .line 642
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 640
    .end local v2           #_arg0:Z
    :cond_1b
    const/4 v2, 0x0

    goto :goto_1c

    .line 647
    :sswitch_35
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 649
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v2, 0x1

    .line 650
    .restart local v2       #_arg0:Z
    :goto_1d
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->showStrictModeViolation(Z)V

    .line 651
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 649
    .end local v2           #_arg0:Z
    :cond_1c
    const/4 v2, 0x0

    goto :goto_1d

    .line 656
    :sswitch_36
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 659
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 660
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 665
    .end local v2           #_arg0:Ljava/lang/String;
    :sswitch_37
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 667
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v2, 0x1

    .line 669
    .local v2, _arg0:Z
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v3, 0x1

    .line 670
    .local v3, _arg1:Z
    :goto_1f
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->updateRotation(ZZ)V

    .line 671
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 667
    .end local v2           #_arg0:Z
    .end local v3           #_arg1:Z
    :cond_1d
    const/4 v2, 0x0

    goto :goto_1e

    .line 669
    .restart local v2       #_arg0:Z
    :cond_1e
    const/4 v3, 0x0

    goto :goto_1f

    .line 676
    .end local v2           #_arg0:Z
    :sswitch_38
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getRotation()I

    move-result v13

    .line 678
    .local v13, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 680
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 684
    .end local v13           #_result:I
    :sswitch_39
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v2

    .line 687
    .local v2, _arg0:Landroid/view/IRotationWatcher;
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v13

    .line 688
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 690
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 694
    .end local v2           #_arg0:Landroid/view/IRotationWatcher;
    .end local v13           #_result:I
    :sswitch_3a
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getPreferredOptionsPanelGravity()I

    move-result v13

    .line 696
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 698
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 702
    .end local v13           #_result:I
    :sswitch_3b
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 705
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->freezeRotation(I)V

    .line 706
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 711
    .end local v2           #_arg0:I
    :sswitch_3c
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 712
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->thawRotation()V

    .line 713
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 718
    :sswitch_3d
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 722
    .local v2, _arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 724
    .local v3, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 725
    .restart local v4       #_arg2:I
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->screenshotApplications(Landroid/os/IBinder;II)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 726
    .local v13, _result:Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    if-eqz v13, :cond_1f

    .line 728
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 729
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 734
    :goto_20
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 732
    :cond_1f
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_20

    .line 738
    .end local v2           #_arg0:Landroid/os/IBinder;
    .end local v3           #_arg1:I
    .end local v4           #_arg2:I
    .end local v13           #_result:Landroid/graphics/Bitmap;
    :sswitch_3e
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 740
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 741
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->statusBarVisibilityChanged(I)V

    .line 742
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 743
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 747
    .end local v2           #_arg0:I
    :sswitch_3f
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 749
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 751
    .local v2, _arg0:Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v3

    .line 752
    .local v3, _arg1:Landroid/os/IRemoteCallback;
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->waitForWindowDrawn(Landroid/os/IBinder;Landroid/os/IRemoteCallback;)V

    .line 753
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 758
    .end local v2           #_arg0:Landroid/os/IBinder;
    .end local v3           #_arg1:Landroid/os/IRemoteCallback;
    :sswitch_40
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 759
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->hasNavigationBar()Z

    move-result v13

    .line 760
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    if-eqz v13, :cond_20

    const/4 v1, 0x1

    :goto_21
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 762
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 761
    :cond_20
    const/4 v1, 0x0

    goto :goto_21

    .line 766
    .end local v13           #_result:Z
    :sswitch_41
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 767
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->lockNow()V

    .line 768
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 773
    :sswitch_42
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_21

    .line 776
    sget-object v1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 781
    .local v2, _arg0:Landroid/graphics/Bitmap;
    :goto_22
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->registerHoveringSpenCustomIcon(Landroid/graphics/Bitmap;)I

    move-result v13

    .line 782
    .local v13, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 784
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 779
    .end local v2           #_arg0:Landroid/graphics/Bitmap;
    .end local v13           #_result:I
    :cond_21
    const/4 v2, 0x0

    .restart local v2       #_arg0:Landroid/graphics/Bitmap;
    goto :goto_22

    .line 788
    .end local v2           #_arg0:Landroid/graphics/Bitmap;
    :sswitch_43
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 790
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 791
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->removeHoveringSpenCustomIcon(I)V

    .line 792
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 797
    .end local v2           #_arg0:I
    :sswitch_44
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 799
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 801
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 803
    .local v3, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 805
    .restart local v4       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_22

    .line 806
    sget-object v1, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    .line 811
    .local v5, _arg3:Landroid/graphics/Point;
    :goto_23
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/IWindowManager$Stub;->reloadPointerIcon(IIILandroid/graphics/Point;)V

    .line 812
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 813
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 809
    .end local v5           #_arg3:Landroid/graphics/Point;
    :cond_22
    const/4 v5, 0x0

    .restart local v5       #_arg3:Landroid/graphics/Point;
    goto :goto_23

    .line 817
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v4           #_arg2:I
    .end local v5           #_arg3:Landroid/graphics/Point;
    :sswitch_45
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 819
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 821
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 823
    .restart local v3       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_23

    .line 824
    sget-object v1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 830
    .local v4, _arg2:Landroid/graphics/Bitmap;
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_24

    .line 831
    sget-object v1, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    .line 836
    .restart local v5       #_arg3:Landroid/graphics/Point;
    :goto_25
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/IWindowManager$Stub;->reloadPointerIconForBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Point;)I

    move-result v13

    .line 837
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 839
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 827
    .end local v4           #_arg2:Landroid/graphics/Bitmap;
    .end local v5           #_arg3:Landroid/graphics/Point;
    .end local v13           #_result:I
    :cond_23
    const/4 v4, 0x0

    .restart local v4       #_arg2:Landroid/graphics/Bitmap;
    goto :goto_24

    .line 834
    :cond_24
    const/4 v5, 0x0

    .restart local v5       #_arg3:Landroid/graphics/Point;
    goto :goto_25

    .line 843
    .end local v2           #_arg0:I
    .end local v3           #_arg1:I
    .end local v4           #_arg2:Landroid/graphics/Bitmap;
    .end local v5           #_arg3:Landroid/graphics/Point;
    :sswitch_46
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 844
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isNavigationBarVisible()Z

    move-result v13

    .line 845
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 846
    if-eqz v13, :cond_25

    const/4 v1, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 847
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 846
    :cond_25
    const/4 v1, 0x0

    goto :goto_26

    .line 851
    .end local v13           #_result:Z
    :sswitch_47
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 853
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 855
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_26

    .line 856
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 862
    .local v3, _arg1:Landroid/content/ComponentName;
    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_27

    const/4 v4, 0x1

    .line 863
    .local v4, _arg2:Z
    :goto_28
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v13

    .line 864
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 865
    if-eqz v13, :cond_28

    const/4 v1, 0x1

    :goto_29
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 866
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 859
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v4           #_arg2:Z
    .end local v13           #_result:Z
    :cond_26
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_27

    .line 862
    :cond_27
    const/4 v4, 0x0

    goto :goto_28

    .line 865
    .restart local v4       #_arg2:Z
    .restart local v13       #_result:Z
    :cond_28
    const/4 v1, 0x0

    goto :goto_29

    .line 870
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v4           #_arg2:Z
    .end local v13           #_result:Z
    :sswitch_48
    const-string v1, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 872
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 874
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_29

    .line 875
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 880
    .restart local v3       #_arg1:Landroid/content/ComponentName;
    :goto_2a
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v13

    .line 881
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    if-eqz v13, :cond_2a

    const/4 v1, 0x1

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 883
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 878
    .end local v3           #_arg1:Landroid/content/ComponentName;
    .end local v13           #_result:Z
    :cond_29
    const/4 v3, 0x0

    .restart local v3       #_arg1:Landroid/content/ComponentName;
    goto :goto_2a

    .line 882
    .restart local v13       #_result:Z
    :cond_2a
    const/4 v1, 0x0

    goto :goto_2b

    .line 44
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
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
