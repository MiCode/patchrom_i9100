.class public Lcom/sec/android/app/callsetting/voicecall/VoiceCall;
.super Landroid/preference/PreferenceActivity;
.source "VoiceCall.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/callsetting/voicecall/VoiceCall$8;,
        Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;
    }
.end annotation


# instance fields
.field doActivate:Ljava/lang/Runnable;

.field doDeactivate:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private mAppState:Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;

.field private mAutoRedial:Landroid/preference/CheckBoxPreference;

.field private mErrAlertPopup:Landroid/app/AlertDialog;

.field private mGetCallWaitingComplete:Landroid/os/Handler;

.field private mNetworkServiceHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrevBusyDialog:I

.field private mSetOptionComplete:Landroid/os/Handler;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSkipCallWaitingReq:Z

.field private mTelMan:Landroid/telephony/TelephonyManager;

.field private mVoiceCallVisible:Z

.field private mWaitPopup:Landroid/app/AlertDialog;

.field private mWaitingCall:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 63
    iput-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mWaitPopup:Landroid/app/AlertDialog;

    .line 64
    iput-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mErrAlertPopup:Landroid/app/AlertDialog;

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mSkipCallWaitingReq:Z

    .line 301
    new-instance v0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$3;-><init>(Lcom/sec/android/app/callsetting/voicecall/VoiceCall;)V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mGetCallWaitingComplete:Landroid/os/Handler;

    .line 388
    new-instance v0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$4;-><init>(Lcom/sec/android/app/callsetting/voicecall/VoiceCall;)V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mSetOptionComplete:Landroid/os/Handler;

    .line 529
    new-instance v0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$5;-><init>(Lcom/sec/android/app/callsetting/voicecall/VoiceCall;)V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mNetworkServiceHandler:Landroid/os/Handler;

    .line 658
    new-instance v0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$7;-><init>(Lcom/sec/android/app/callsetting/voicecall/VoiceCall;)V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/callsetting/voicecall/VoiceCall;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->requestCWSetCommand(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/callsetting/voicecall/VoiceCall;Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->setAppState(Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/callsetting/voicecall/VoiceCall;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mWaitingCall:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/callsetting/voicecall/VoiceCall;Landroid/os/AsyncResult;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->handleGetCWMessage(Landroid/os/AsyncResult;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-static {p0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/callsetting/voicecall/VoiceCall;Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->setAppState(Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/callsetting/voicecall/VoiceCall;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->handleSetCWMessage()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/callsetting/voicecall/VoiceCall;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/callsetting/voicecall/VoiceCall;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mNetworkServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/callsetting/voicecall/VoiceCall;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/callsetting/voicecall/VoiceCall;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->dismissCallWaiting()V

    return-void
.end method

.method private deleteBusyDialog()V
    .locals 3

    .prologue
    .line 643
    const-string v0, "##CallWaiting## "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### deleteBusyDialog mPrevBusyDialog:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mPrevBusyDialog:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ####"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget v0, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mPrevBusyDialog:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->removeDialog(I)V

    .line 652
    return-void
.end method

.method private dismissCallWaiting()V
    .locals 1

    .prologue
    .line 637
    sget-object v0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;->INPUT_READY:Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->setAppState(Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;)V

    .line 638
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->finish()V

    .line 639
    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 663
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 664
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 665
    return-void
.end method

.method private getCallWaiting()V
    .locals 4

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_2

    .line 245
    sget-object v0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;->INITIAL_QUERY:Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->setAppState(Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;)V

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interrogateCF() radioState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    if-nez v0, :cond_0

    .line 253
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->requestCWQueryCommand()V

    .line 268
    :goto_0
    return-void

    .line 254
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 256
    const-string v0, "onCreate: radio not ready, waiting for signal."

    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->log(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 261
    :cond_1
    sget-object v0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;->NETWORK_ERROR:Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;

    const/16 v1, 0xc8

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->setAppState(Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;I)V

    goto :goto_0

    .line 265
    :cond_2
    const-string v0, "setDisplayMode: radio is off!"

    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->log(Ljava/lang/String;)V

    .line 266
    sget-object v0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;->NETWORK_ERROR:Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;

    const/16 v1, 0x320

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->setAppState(Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;I)V

    goto :goto_0
.end method

.method private handleGetCWMessage(Landroid/os/AsyncResult;)I
    .locals 8
    .parameter "ar"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 342
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 343
    const-string v2, "handleGetCWMessage: Error getting CW enable state."

    invoke-static {v2}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->log(Ljava/lang/String;)V

    .line 344
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_0

    .line 345
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    .line 346
    .local v1, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v2, :cond_0

    .line 348
    const/16 v2, 0x384

    .line 378
    .end local v1           #err:Lcom/android/internal/telephony/CommandException$Error;
    :goto_0
    return v2

    .line 351
    :cond_0
    const/16 v2, 0xc8

    goto :goto_0

    .line 353
    :cond_1
    const-string v2, "handleGetCWMessage: CW enable state successfully queried."

    invoke-static {v2}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->log(Ljava/lang/String;)V

    .line 355
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    .line 357
    .local v0, cwArray:[I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncCWState: Setting UI state consistent with CW enable state of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v2, v0, v7

    if-ne v2, v6, :cond_3

    const-string v2, "ENABLED"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->log(Ljava/lang/String;)V

    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service Class = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%08X"

    new-array v4, v6, [Ljava/lang/Object;

    aget v5, v0, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->log(Ljava/lang/String;)V

    .line 362
    aget v2, v0, v7

    if-ne v2, v6, :cond_4

    aget v2, v0, v6

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    .line 363
    const v2, 0x7f07008a

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->displayToast(Ljava/lang/String;)V

    .line 364
    iget-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mWaitingCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_2

    .line 366
    iput-boolean v6, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mSkipCallWaitingReq:Z

    .line 367
    iget-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mWaitingCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 378
    :cond_2
    :goto_2
    const/16 v2, 0x64

    goto :goto_0

    .line 357
    :cond_3
    const-string v2, "DISABLED"

    goto :goto_1

    .line 370
    :cond_4
    const v2, 0x7f07008b

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->displayToast(Ljava/lang/String;)V

    .line 371
    iget-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mWaitingCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 373
    iput-boolean v6, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mSkipCallWaitingReq:Z

    .line 374
    iget-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mWaitingCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2
.end method

.method private handleSetCWMessage()V
    .locals 3

    .prologue
    .line 408
    const-string v0, "handleSetCWMessage: set CW request complete, reading value back from network."

    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->log(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mGetCallWaitingComplete:Landroid/os/Handler;

    const/16 v2, 0x190

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 411
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 655
    const-string v0, "## CallWaiting ##"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    return-void
.end method

.method private requestCWQueryCommand()V
    .locals 3

    .prologue
    .line 293
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mGetCallWaitingComplete:Landroid/os/Handler;

    const/16 v2, 0x190

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 294
    return-void
.end method

.method private requestCWSetCommand(I)V
    .locals 4
    .parameter "process"

    .prologue
    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCWSetCommand: requesting set call waiting enable (CW) to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->log(Ljava/lang/String;)V

    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, bActivate:Z
    packed-switch p1, :pswitch_data_0

    .line 287
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v3, 0x190

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 288
    return-void

    .line 279
    :pswitch_0
    const/4 v0, 0x1

    .line 280
    goto :goto_0

    .line 283
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 276
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setAppState(Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;)V
    .locals 2
    .parameter "requestedState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 416
    sget-object v0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;->NETWORK_ERROR:Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;

    if-ne p1, v0, :cond_0

    .line 417
    const-string v0, "setAppState: illegal error state without reason."

    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->log(Ljava/lang/String;)V

    .line 418
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal error state without reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_0
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->setAppState(Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;I)V

    .line 421
    return-void
.end method

.method private setAppState(Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;I)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAppState() mAppState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mAppState:Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,requestedState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",msgStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mAppState:Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;

    if-ne p1, v0, :cond_0

    .line 431
    const-string v0, "setAppState: requestedState same as current state. ignoring."

    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->log(Ljava/lang/String;)V

    .line 517
    :goto_0
    return-void

    .line 437
    :cond_0
    sget-object v0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;->NETWORK_ERROR:Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;

    if-ne p1, v0, :cond_2

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->log(Ljava/lang/String;)V

    .line 440
    iget-boolean v0, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mVoiceCallVisible:Z

    if-eqz v0, :cond_1

    .line 441
    sparse-switch p2, :sswitch_data_0

    .line 470
    :goto_1
    iput-object p1, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mAppState:Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;

    goto :goto_0

    .line 444
    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->deleteBusyDialog()V

    .line 445
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->showDialog(I)V

    goto :goto_1

    .line 449
    :sswitch_1
    const/16 v0, 0x320

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->showDialog(I)V

    goto :goto_1

    .line 453
    :sswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->deleteBusyDialog()V

    .line 454
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->showDialog(I)V

    goto :goto_1

    .line 457
    :sswitch_3
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->deleteBusyDialog()V

    .line 458
    const/16 v0, 0x2bc

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->showDialog(I)V

    goto :goto_1

    .line 467
    :cond_1
    const-string v0, "VoiceCall"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVoiceCallVisible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mVoiceCallVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " so, skip displaying dialog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->deleteBusyDialog()V

    goto :goto_1

    .line 474
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mAppState:Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->log(Ljava/lang/String;)V

    .line 476
    sget-object v0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$8;->$SwitchMap$com$sec$android$app$callsetting$voicecall$VoiceCall$AppState:[I

    iget-object v1, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mAppState:Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;

    invoke-virtual {v1}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 516
    :cond_3
    :goto_2
    iput-object p1, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mAppState:Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;

    goto/16 :goto_0

    .line 481
    :pswitch_0
    sget-object v0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;->INPUT_READY:Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;

    if-eq p1, v0, :cond_3

    .line 482
    const-string v0, "setAppState: illegal transition from NETWORK_ERROR"

    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->log(Ljava/lang/String;)V

    .line 483
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from NETWORK_ERROR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState: displaying busy dialog, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->log(Ljava/lang/String;)V

    .line 490
    sget-object v0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;->INITIAL_QUERY:Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;

    if-ne p1, v0, :cond_4

    .line 491
    const/16 v0, 0x384

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->showDialog(I)V

    goto :goto_2

    .line 492
    :cond_4
    sget-object v0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;->BUSY_NETWORK_CONNECT:Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;

    if-ne p1, v0, :cond_3

    .line 493
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->showDialog(I)V

    goto :goto_2

    .line 499
    :pswitch_2
    sget-object v0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;->INPUT_READY:Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;

    if-eq p1, v0, :cond_5

    .line 500
    const-string v0, "setAppState: illegal transition from INITIAL_QUERY"

    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->log(Ljava/lang/String;)V

    .line 501
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from INITIAL_QUERY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 504
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->deleteBusyDialog()V

    goto :goto_2

    .line 508
    :pswitch_3
    sget-object v0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;->INPUT_READY:Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;

    if-eq p1, v0, :cond_6

    .line 509
    const-string v0, "setAppState: illegal transition from BUSY_NETWORK_CONNECT"

    invoke-static {v0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->log(Ljava/lang/String;)V

    .line 510
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from BUSY_NETWORK_CONNECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->deleteBusyDialog()V

    goto :goto_2

    .line 441
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_2
        0x320 -> :sswitch_1
        0x384 -> :sswitch_3
    .end sparse-switch

    .line 476
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    const v0, 0x7f040008

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->addPreferencesFromResource(I)V

    .line 125
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 126
    const-string v0, "waitingcall_preference"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mWaitingCall:Landroid/preference/CheckBoxPreference;

    .line 127
    const-string v0, "autoredial_preference"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    .line 129
    new-instance v0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$1;-><init>(Lcom/sec/android/app/callsetting/voicecall/VoiceCall;)V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->doActivate:Ljava/lang/Runnable;

    .line 138
    new-instance v0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$2;-><init>(Lcom/sec/android/app/callsetting/voicecall/VoiceCall;)V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->doDeactivate:Ljava/lang/Runnable;

    .line 147
    sget-object v0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;->INPUT_READY:Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;

    iput-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mAppState:Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;

    .line 148
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 150
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 156
    :cond_0
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->showDialog(I)V

    .line 157
    const-string v0, "VoiceCall"

    const-string v1, "skip set or get CallWaiting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->getCallWaiting()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayDialog() mWaitPopup:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mWaitPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const/16 v1, 0x64

    if-eq p1, v1, :cond_0

    const/16 v1, 0x384

    if-ne p1, v1, :cond_2

    .line 565
    :cond_0
    iput p1, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mPrevBusyDialog:I

    .line 567
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 568
    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 570
    sparse-switch p1, :sswitch_data_0

    .line 632
    :cond_1
    :goto_0
    return-object v0

    .line 573
    :sswitch_0
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 574
    const v0, 0x7f0700bb

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 575
    goto :goto_0

    .line 578
    :sswitch_1
    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 579
    const v0, 0x7f0700ba

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 580
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v2, 0x258

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setCancelMessage(Landroid/os/Message;)V

    move-object v0, v1

    .line 582
    goto :goto_0

    .line 589
    :cond_2
    const/16 v1, 0x12c

    if-eq p1, v1, :cond_3

    const/16 v1, 0xc8

    if-eq p1, v1, :cond_3

    const/16 v1, 0x320

    if-eq p1, v1, :cond_3

    const/16 v1, 0x2bc

    if-ne p1, v1, :cond_1

    .line 592
    :cond_3
    const v1, 0x7f0700b9

    .line 594
    sparse-switch p1, :sswitch_data_1

    .line 608
    const v0, 0x7f0700bd

    .line 612
    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 613
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 614
    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 615
    invoke-virtual {p0, v1}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 616
    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 617
    const v0, 0x7f0700ad

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$6;-><init>(Lcom/sec/android/app/callsetting/voicecall/VoiceCall;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 627
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 597
    :sswitch_2
    const v0, 0x7f0700bc

    .line 598
    goto :goto_1

    .line 601
    :sswitch_3
    const v0, 0x7f0700be

    .line 602
    goto :goto_1

    .line 604
    :sswitch_4
    const v0, 0x7f070096

    .line 605
    goto :goto_1

    .line 570
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x384 -> :sswitch_1
    .end sparse-switch

    .line 594
    :sswitch_data_1
    .sparse-switch
        0x12c -> :sswitch_2
        0x2bc -> :sswitch_4
        0x320 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 184
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 188
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 171
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 173
    iget-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 174
    iget-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "autoredial_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 175
    iput-boolean v1, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mVoiceCallVisible:Z

    .line 176
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v0, 0x0

    .line 204
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "========== onSharedPreferenceChanged : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 206
    const-string v2, "waitingcall_preference"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 210
    .local v1, isChecked:Z
    iget-boolean v2, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mSkipCallWaitingReq:Z

    if-eqz v2, :cond_3

    .line 212
    iput-boolean v0, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mSkipCallWaitingReq:Z

    .line 227
    .end local v1           #isChecked:Z
    :cond_0
    :goto_0
    const-string v2, "autoredial_preference"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 229
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 230
    .local v0, auto_redial:I
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "autoredial_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 233
    .end local v0           #auto_redial:I
    :cond_2
    return-void

    .line 216
    .restart local v1       #isChecked:Z
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mAppState:Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;

    sget-object v3, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;->INPUT_READY:Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;

    if-eq v2, v3, :cond_4

    .line 217
    const-string v2, "##VoiceCall##"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mAppSatate is wrong !! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mAppState:Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    sget-object v2, Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;->INPUT_READY:Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;

    invoke-direct {p0, v2}, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->setAppState(Lcom/sec/android/app/callsetting/voicecall/VoiceCall$AppState;)V

    .line 220
    :cond_4
    if-eqz v1, :cond_5

    .line 221
    iget-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->doActivate:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 223
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->doDeactivate:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 191
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/callsetting/voicecall/VoiceCall;->mVoiceCallVisible:Z

    .line 194
    return-void
.end method
