.class public Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;
.super Landroid/app/enterprise/remotecontrol/IRemoteInjection$Stub;
.source "RemoteInjectionService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field static final TAG:Ljava/lang/String; = "RemoteInjection"

.field private static final UPDATE_REMOTESCREEN_DIMENSIONS:I = 0x100

.field private static mGlobalServiceMessenger:Landroid/os/Handler;


# instance fields
.field final mContext:Landroid/content/Context;

.field mRemoteScreenHeight:I

.field mRemoteScreenWidth:I

.field private mServiceHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mGlobalServiceMessenger:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x2

    .line 74
    invoke-direct {p0}, Landroid/app/enterprise/remotecontrol/IRemoteInjection$Stub;-><init>()V

    .line 316
    new-instance v2, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$1;-><init>(Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;)V

    iput-object v2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mServiceHandler:Landroid/os/Handler;

    .line 75
    iput-object p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    .line 76
    invoke-direct {p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 77
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 78
    .local v1, orientation:I
    if-eqz v1, :cond_0

    if-ne v1, v3, :cond_2

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getRawWidth()I

    move-result v2

    :goto_0
    iput v2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    .line 79
    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_3

    :cond_1
    invoke-virtual {v0}, Landroid/view/Display;->getRawHeight()I

    move-result v2

    :goto_1
    iput v2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    .line 80
    iget-object v2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mServiceHandler:Landroid/os/Handler;

    sput-object v2, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mGlobalServiceMessenger:Landroid/os/Handler;

    .line 81
    return-void

    .line 78
    :cond_2
    invoke-virtual {v0}, Landroid/view/Display;->getRawHeight()I

    move-result v2

    goto :goto_0

    .line 79
    :cond_3
    invoke-virtual {v0}, Landroid/view/Display;->getRawWidth()I

    move-result v2

    goto :goto_1
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    return-object v0
.end method

.method private injectKeyEventInternal(Landroid/view/KeyEvent;Z)Z
    .locals 16
    .parameter "ev"
    .parameter "sync"

    .prologue
    .line 244
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    .line 245
    .local v1, downTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    .line 247
    .local v3, eventTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    .line 248
    .local v5, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    .line 249
    .local v6, code:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    .line 250
    .local v7, repeatCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v8

    .line 251
    .local v8, metaState:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v9

    .line 252
    .local v9, deviceId:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v10

    .line 253
    .local v10, scancode:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v12

    .line 254
    .local v12, source:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v13

    .line 256
    .local v13, flags:I
    if-nez v12, :cond_0

    .line 257
    const/16 v12, 0x101

    .line 260
    :cond_0
    const-wide/16 v14, 0x0

    cmp-long v11, v3, v14

    if-nez v11, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 261
    :cond_1
    const-wide/16 v14, 0x0

    cmp-long v11, v1, v14

    if-nez v11, :cond_2

    move-wide v1, v3

    .line 263
    :cond_2
    new-instance v0, Landroid/view/KeyEvent;

    or-int/lit8 v11, v13, 0x8

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 266
    .local v0, newEvent:Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v14

    if-eqz p2, :cond_3

    const/4 v11, 0x2

    :goto_0
    invoke-virtual {v14, v0, v11}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v11

    return v11

    :cond_3
    const/4 v11, 0x1

    goto :goto_0
.end method

.method private injectPointerEventInternal(Landroid/view/MotionEvent;Z)Z
    .locals 3
    .parameter "ev"
    .parameter "sync"

    .prologue
    .line 272
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 273
    .local v0, newEvent:Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 274
    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 277
    :cond_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    if-eqz p2, :cond_1

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v1

    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private injectTrackballEventInternal(Landroid/view/MotionEvent;Z)Z
    .locals 3
    .parameter "ev"
    .parameter "sync"

    .prologue
    .line 283
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 284
    .local v0, newEvent:Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_0

    .line 285
    const v1, 0x10004

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 288
    :cond_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    if-eqz p2, :cond_1

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v1

    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private transformMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 21
    .parameter "event"

    .prologue
    .line 298
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v15

    .line 299
    .local v15, display:Landroid/view/Display;
    invoke-virtual {v15}, Landroid/view/Display;->getRawWidth()I

    move-result v1

    int-to-float v0, v1

    move/from16 v17, v0

    .line 300
    .local v17, hwWidth:F
    invoke-virtual {v15}, Landroid/view/Display;->getRawHeight()I

    move-result v1

    int-to-float v0, v1

    move/from16 v16, v0

    .line 301
    .local v16, hwHeight:F
    invoke-virtual {v15}, Landroid/view/Display;->getRotation()I

    move-result v18

    .line 303
    .local v18, orientation:I
    if-eqz v18, :cond_0

    const/4 v1, 0x2

    move/from16 v0, v18

    if-ne v0, v1, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    int-to-float v0, v1

    move/from16 v20, v0

    .line 304
    .local v20, remoteWidth:F
    :goto_0
    if-eqz v18, :cond_1

    const/4 v1, 0x2

    move/from16 v0, v18

    if-ne v0, v1, :cond_3

    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    int-to-float v0, v1

    move/from16 v19, v0

    .line 307
    .local v19, remoteHeight:F
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    div-float v2, v17, v20

    mul-float v6, v1, v2

    .line 308
    .local v6, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    div-float v2, v16, v19

    mul-float v7, v1, v2

    .line 310
    .local v7, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v14

    invoke-static/range {v1 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v1

    return-object v1

    .line 303
    .end local v6           #x:F
    .end local v7           #y:F
    .end local v19           #remoteHeight:F
    .end local v20           #remoteWidth:F
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    int-to-float v0, v1

    move/from16 v20, v0

    goto :goto_0

    .line 304
    .restart local v20       #remoteWidth:F
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    int-to-float v0, v1

    move/from16 v19, v0

    goto :goto_1
.end method

.method public static updateRemoteScreenDimensions(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 334
    const-string v2, "RemoteInjection"

    const-string v3, "RemoteInjectionService: updateRemoteScreenDimensions()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    sget-object v2, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mGlobalServiceMessenger:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 336
    const-string v2, "RemoteInjection"

    const-string v3, "RemoteInjectionService: mGlobalServiceMessenger == 0"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_0
    const/4 v2, 0x0

    const/16 v3, 0x100

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 339
    .local v1, m:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 340
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "width"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 341
    const-string v2, "height"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 342
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 343
    sget-object v2, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mGlobalServiceMessenger:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 344
    return-void
.end method


# virtual methods
.method public injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    .locals 7
    .parameter "ev"
    .parameter "sync"

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    const/4 v1, 0x0

    .line 124
    :goto_0
    return v1

    .line 109
    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_REMOTE_CONTROL"

    const-string v6, "Remote Control"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 115
    .local v2, token:J
    const/4 v1, 0x0

    .line 118
    .local v1, ret:Z
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->injectKeyEventInternal(Landroid/view/KeyEvent;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 123
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "RemoteInjection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error injecting trackball event : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public injectPointerEvent(Landroid/view/MotionEvent;Z)Z
    .locals 8
    .parameter "ev"
    .parameter "sync"

    .prologue
    .line 151
    iget-object v5, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.sec.MDM_REMOTE_CONTROL"

    const-string v7, "Remote Control"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 158
    .local v3, token:J
    const/4 v1, 0x0

    .line 161
    .local v1, ret:Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->transformMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 162
    .local v2, tev:Landroid/view/MotionEvent;
    invoke-direct {p0, v2, p2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->injectPointerEventInternal(Landroid/view/MotionEvent;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 167
    .end local v2           #tev:Landroid/view/MotionEvent;
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 168
    return v1

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "RemoteInjection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error injecting trackball event : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public injectTrackballEvent(Landroid/view/MotionEvent;Z)Z
    .locals 8
    .parameter "ev"
    .parameter "sync"

    .prologue
    .line 195
    iget-object v5, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.sec.MDM_REMOTE_CONTROL"

    const-string v7, "Remote Control"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 202
    .local v3, token:J
    const/4 v1, 0x0

    .line 205
    .local v1, ret:Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->transformMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 206
    .local v2, tev:Landroid/view/MotionEvent;
    invoke-direct {p0, v2, p2}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->injectTrackballEventInternal(Landroid/view/MotionEvent;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 211
    .end local v2           #tev:Landroid/view/MotionEvent;
    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 212
    return v1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "RemoteInjection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error injecting trackball event : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 225
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 231
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 241
    return-void
.end method

.method public setRemoteScreenDimensions(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 217
    const-string v0, "RemoteInjection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteInjectionService: setRemoteScreenDimensions() - Width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iput p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenWidth:I

    .line 219
    iput p2, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->mRemoteScreenHeight:I

    .line 220
    return-void
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 236
    return-void
.end method
