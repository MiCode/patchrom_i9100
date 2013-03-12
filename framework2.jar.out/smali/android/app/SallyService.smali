.class public Landroid/app/SallyService;
.super Landroid/app/Service;
.source "SallyService.java"

# interfaces
.implements Landroid/view/Window$Callback;
.implements Landroid/view/KeyEvent$Callback;


# static fields
.field public static final ALARM_ALERT_ACTION:Ljava/lang/String; = "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT_FROM_ALARM"

.field public static final TAG:Ljava/lang/String; = "Sally Service"


# instance fields
.field private mAlarmStateListener:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field protected mCurrentOrientation:I

.field private mDecor:Landroid/view/View;

.field private mIWindowManager:Landroid/view/IWindowManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPhone:Landroid/telephony/TelephonyManager;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mWindow:Landroid/view/Window;

.field protected mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field protected mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 51
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SallyService;->mIWindowManager:Landroid/view/IWindowManager;

    return-void
.end method

.method private hideStatusBar(Z)V
    .locals 0
    .parameter "status"

    .prologue
    .line 359
    return-void
.end method

.method private initAlarmEventListener()V
    .locals 3

    .prologue
    .line 177
    iget-object v1, p0, Landroid/app/SallyService;->mAlarmStateListener:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 178
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 179
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT_FROM_ALARM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    new-instance v1, Landroid/app/SallyService$2;

    invoke-direct {v1, p0}, Landroid/app/SallyService$2;-><init>(Landroid/app/SallyService;)V

    iput-object v1, p0, Landroid/app/SallyService;->mAlarmStateListener:Landroid/content/BroadcastReceiver;

    .line 189
    iget-object v1, p0, Landroid/app/SallyService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/SallyService;->mAlarmStateListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private initTelephonyEventListener()V
    .locals 4

    .prologue
    .line 159
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/app/SallyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Landroid/app/SallyService;->mPhone:Landroid/telephony/TelephonyManager;

    .line 161
    :try_start_0
    new-instance v1, Landroid/app/SallyService$1;

    invoke-direct {v1, p0}, Landroid/app/SallyService$1;-><init>(Landroid/app/SallyService;)V

    iput-object v1, p0, Landroid/app/SallyService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 168
    iget-object v1, p0, Landroid/app/SallyService;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Landroid/app/SallyService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Ljava/lang/SecurityException;
    const-string v1, "Sally Service"

    const-string v2, "initTelephonyEventListener : Doesn\'t have the permission READ_PHONE_STATE."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "view"
    .parameter "params"

    .prologue
    .line 217
    const-string v0, "Sally Service"

    const-string v1, "addContentView() view, params"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    return-void
.end method

.method public addWindow(I)Landroid/view/Window;
    .locals 3
    .parameter "layoutResID"

    .prologue
    .line 274
    const-string v1, "Sally Service"

    const-string v2, "addWindow layoutResID"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v1, p0, Landroid/app/SallyService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 280
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    return-object v1
.end method

.method public addWindow(Landroid/view/View;III)Landroid/view/Window;
    .locals 6
    .parameter "view"
    .parameter "width"
    .parameter "height"
    .parameter "windowType"

    .prologue
    const/4 v3, 0x0

    .line 286
    const-string v4, "Sally Service"

    const-string v5, "addWindow view"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {p0}, Landroid/app/SallyService;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 293
    .local v2, newWindowAttributes:Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Landroid/app/SallyService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v1

    .line 295
    .local v1, newWindow:Landroid/view/Window;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 298
    if-eqz v1, :cond_1

    .line 299
    iget-object v4, p0, Landroid/app/SallyService;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v1, v4, v3, v3}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 300
    iput p2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 301
    iput p3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 302
    iput p4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 303
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 305
    invoke-virtual {v1, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 306
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 308
    .local v0, newDecor:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 309
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 310
    iget-object v3, p0, Landroid/app/SallyService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    .end local v0           #newDecor:Landroid/view/View;
    .end local v1           #newWindow:Landroid/view/Window;
    :cond_0
    :goto_0
    return-object v1

    .restart local v1       #newWindow:Landroid/view/Window;
    :cond_1
    move-object v1, v3

    goto :goto_0
.end method

.method public createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 4

    .prologue
    .line 245
    const-string v2, "Sally Service"

    const-string v3, "createLayoutParams"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/16 v1, 0x834

    .line 250
    .local v1, windowType:I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const v2, 0x1040340

    const/4 v3, -0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 258
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x20

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 259
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 261
    return-object v0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 422
    iget-object v0, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    const/4 v0, 0x1

    .line 425
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 390
    iget-object v0, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    const/4 v0, 0x1

    .line 393
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/app/SallyService;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/SallyService;->mDecor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, p0, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 398
    iget-object v0, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    const/4 v0, 0x1

    .line 401
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 430
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 406
    iget-object v0, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    const/4 v0, 0x1

    .line 409
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 414
    iget-object v0, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    const/4 v0, 0x1

    .line 417
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 2
    .parameter "id"

    .prologue
    .line 224
    const-string v0, "Sally Service"

    const-string v1, "findViewById()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    .prologue
    .line 231
    const-string v0, "Sally Service"

    const-string v1, "getAttributes()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Landroid/app/SallyService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 2

    .prologue
    .line 267
    const-string v0, "Sally Service"

    const-string v1, "getWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 498
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 494
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 472
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter "intent"

    .prologue
    .line 107
    const-string v0, "Sally Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBind() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 363
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/app/SallyService;->mCurrentOrientation:I

    .line 364
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 464
    return-void
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 61
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 62
    const-string v2, "Sally Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/app/SallyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Landroid/app/SallyService;->mWindowManager:Landroid/view/WindowManager;

    .line 65
    invoke-virtual {p0}, Landroid/app/SallyService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Landroid/app/SallyService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 66
    iput-object p0, p0, Landroid/app/SallyService;->mContext:Landroid/content/Context;

    .line 68
    const/4 v0, 0x0

    .line 70
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v2, p0, Landroid/app/SallyService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Landroid/app/SallyService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 71
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    invoke-direct {v2, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/app/SallyService;->mContext:Landroid/content/Context;

    .line 72
    const-string v2, "Sally Service"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loaded theme = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    invoke-virtual {p0}, Landroid/app/SallyService;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput-object v2, p0, Landroid/app/SallyService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 78
    iget-object v2, p0, Landroid/app/SallyService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v2

    iput-object v2, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    .line 80
    iget-object v2, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    if-eqz v2, :cond_0

    .line 81
    iget-object v2, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    iget-object v3, p0, Landroid/app/SallyService;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v2, v3, v5, v5}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 82
    iget-object v2, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 83
    iget-object v2, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 85
    :cond_0
    return-void

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 440
    const/4 v0, 0x0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .parameter "featureId"

    .prologue
    .line 435
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 91
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 92
    const-string v0, "Sally Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Landroid/app/SallyService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Landroid/app/SallyService;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Landroid/app/SallyService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 96
    :cond_0
    iget-object v0, p0, Landroid/app/SallyService;->mAlarmStateListener:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Landroid/app/SallyService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/app/SallyService;->mAlarmStateListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 98
    iput-object v3, p0, Landroid/app/SallyService;->mAlarmStateListener:Landroid/content/BroadcastReceiver;

    .line 100
    :cond_1
    iput-object v3, p0, Landroid/app/SallyService;->mContext:Landroid/content/Context;

    .line 101
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 476
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 368
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    .line 385
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 376
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 377
    invoke-virtual {p0}, Landroid/app/SallyService;->stopService()V

    .line 378
    const/4 v0, 0x1

    .line 381
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 455
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 450
    const/4 v0, 0x0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 480
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "view"
    .parameter "menu"

    .prologue
    .line 445
    const/4 v0, 0x0

    return v0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x0

    return v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v3, 0x1

    .line 115
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 116
    const-string v4, "Sally Service"

    const-string v5, "onStartCommand()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    if-nez p1, :cond_1

    .line 119
    const-string v3, "Sally Service"

    const-string v4, "onStartCommand() : duplicated start command! just ignore."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v3, 0x2

    .line 153
    :cond_0
    :goto_0
    return v3

    .line 123
    :cond_1
    iget-object v4, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    if-eqz v4, :cond_2

    .line 124
    iget-object v4, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    iget-object v5, p0, Landroid/app/SallyService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 127
    :cond_2
    iget-object v4, p0, Landroid/app/SallyService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_3

    .line 128
    invoke-direct {p0, v3}, Landroid/app/SallyService;->hideStatusBar(Z)V

    .line 131
    :cond_3
    invoke-virtual {p0}, Landroid/app/SallyService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Landroid/app/SallyService;->mCurrentOrientation:I

    .line 132
    iget-object v4, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Landroid/app/SallyService;->mDecor:Landroid/view/View;

    .line 133
    iget-object v4, p0, Landroid/app/SallyService;->mDecor:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 134
    iget-object v4, p0, Landroid/app/SallyService;->mDecor:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object v4, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 137
    .local v1, l:Landroid/view/WindowManager$LayoutParams;
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v4, v4, 0x100

    if-nez v4, :cond_4

    .line 139
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 140
    .local v2, nl:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 141
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/lit16 v4, v4, 0x100

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 143
    move-object v1, v2

    .line 147
    .end local v2           #nl:Landroid/view/WindowManager$LayoutParams;
    :cond_4
    :try_start_0
    iget-object v4, p0, Landroid/app/SallyService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Landroid/app/SallyService;->mDecor:Landroid/view/View;

    invoke-interface {v4, v5, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    invoke-virtual {p0}, Landroid/app/SallyService;->stopSelf()V

    goto :goto_0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .parameter "attrs"

    .prologue
    .line 460
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 468
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .parameter "callback"

    .prologue
    .line 489
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeWindow(Landroid/view/Window;)Z
    .locals 2
    .parameter "window"

    .prologue
    .line 322
    const-string v0, "Sally Service"

    const-string v1, "removeWindow window"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    if-eqz p1, :cond_0

    .line 325
    iget-object v0, p0, Landroid/app/SallyService;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 326
    const/4 v0, 0x1

    .line 329
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 238
    const-string v0, "Sally Service"

    const-string v1, "setAttributes()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 240
    return-void
.end method

.method public setContentView(I)V
    .locals 2
    .parameter "layoutResID"

    .prologue
    .line 196
    const-string v0, "Sally Service"

    const-string v1, "setContentView() layoutResID"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    .line 198
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 203
    const-string v0, "Sally Service"

    const-string v1, "setContentView() view"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 205
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "view"
    .parameter "params"

    .prologue
    .line 210
    const-string v0, "Sally Service"

    const-string v1, "setContentView() view, params"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Landroid/app/SallyService;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    return-void
.end method

.method public stopService()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Landroid/app/SallyService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    .line 336
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/SallyService;->hideStatusBar(Z)V

    .line 339
    :cond_0
    iget-object v0, p0, Landroid/app/SallyService;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Landroid/app/SallyService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/app/SallyService;->mDecor:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 342
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/SallyService;->mDecor:Landroid/view/View;

    .line 344
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/SallyService;->stopForeground(Z)V

    .line 345
    invoke-virtual {p0}, Landroid/app/SallyService;->stopSelf()V

    .line 346
    return-void
.end method
