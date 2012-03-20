.class public Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;
.super Landroid/preference/PreferenceActivity;
.source "VideoCallBarring.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$13;,
        Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;
    }
.end annotation


# instance fields
.field private callbarring_password:Ljava/lang/String;

.field doActivate:Ljava/lang/Runnable;

.field doCheckStatus:Ljava/lang/Runnable;

.field doConfirm:Ljava/lang/Runnable;

.field doDeactivate:Ljava/lang/Runnable;

.field editText:Landroid/widget/EditText;

.field factory:Landroid/view/LayoutInflater;

.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private mAppState:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

.field private mCallBarringList1Pref:Landroid/preference/CheckBoxPreference;

.field private mCallBarringList2Pref:Landroid/preference/CheckBoxPreference;

.field private mCallBarringList3Pref:Landroid/preference/CheckBoxPreference;

.field private mCallBarringList4Pref:Landroid/preference/CheckBoxPreference;

.field private mCallBarringList5Pref:Landroid/preference/CheckBoxPreference;

.field private mCheckAllCB:Z

.field private mConfirmPassword:Landroid/widget/EditText;

.field private mInputPassword:Landroid/widget/EditText;

.field private mNetworkServiceHandler:Landroid/os/Handler;

.field private mNewPassword:Landroid/widget/EditText;

.field private mOldPassword:Landroid/widget/EditText;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreference:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevBusyDialog:I

.field private mPwdChangeSubmit:Z

.field private mSelectedIndex:I

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSkipCallBarringReq:Z

.field private mTelMan:Landroid/telephony/TelephonyManager;

.field private mVCBVisible:Z

.field private mVCB_Checked:Z

.field responseCBHandler:Landroid/os/Handler;

.field textEntryView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    .line 167
    iput v1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSelectedIndex:I

    .line 168
    iput-boolean v1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mVCB_Checked:Z

    .line 181
    iput-object v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mInputPassword:Landroid/widget/EditText;

    .line 182
    iput-object v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mOldPassword:Landroid/widget/EditText;

    .line 183
    iput-object v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mNewPassword:Landroid/widget/EditText;

    .line 184
    iput-object v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mConfirmPassword:Landroid/widget/EditText;

    .line 185
    iput-boolean v1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPwdChangeSubmit:Z

    .line 193
    iput-boolean v1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSkipCallBarringReq:Z

    .line 194
    iput-boolean v1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mCheckAllCB:Z

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mVCBVisible:Z

    .line 709
    new-instance v0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$10;

    invoke-direct {v0, p0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$10;-><init>(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->responseCBHandler:Landroid/os/Handler;

    .line 1074
    new-instance v0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$11;

    invoke-direct {v0, p0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$11;-><init>(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    .line 1219
    new-instance v0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$12;

    invoke-direct {v0, p0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$12;-><init>(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->callbarring_password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->callbarring_password:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->changePasswordCallBarring(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mVCB_Checked:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;Landroid/os/AsyncResult;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->handleSetCBMessage(Landroid/os/AsyncResult;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->setAppState(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;I)V
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
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->setAppState(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;Landroid/os/AsyncResult;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->handleQueryCBMessage(Landroid/os/AsyncResult;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mCheckAllCB:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mCheckAllCB:Z

    return p1
.end method

.method static synthetic access$1900(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-static {p0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSkipCallBarringReq:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->dismissCallWaiting()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSelectedIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSelectedIndex:I

    return p1
.end method

.method static synthetic access$308(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSelectedIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSelectedIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->setCallBarring(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->getCallBarring()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mOldPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mNewPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mConfirmPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method private changePasswordCallBarring(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1238
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_2

    .line 1244
    sget-object v0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;->BUSY_NETWORK_CONNECT:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->setAppState(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;)V

    .line 1246
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 1248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changePasswordCallBarring() radioState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhone : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    if-nez v0, :cond_0

    .line 1252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STATE_IN_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->requestCBChangePassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    :goto_0
    return-void

    .line 1255
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STATE_POWER_OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    const-string v0, "onCreate: radio not ready, waiting for signal."

    invoke-static {v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 1258
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 1261
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MSG_EXCEPTION"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    sget-object v0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    const/16 v1, 0xc8

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->setAppState(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;I)V

    goto :goto_0

    .line 1265
    :cond_2
    const-string v0, "setDisplayMode: radio is off!"

    invoke-static {v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 1266
    sget-object v0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    const/16 v1, 0x320

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->setAppState(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;I)V

    goto :goto_0
.end method

.method private checkPassword(Landroid/app/Dialog;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x4

    .line 1279
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mOldPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1280
    iget-object v1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mNewPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1281
    iget-object v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mConfirmPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1283
    const-class v3, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[##### View l_oldPasswordStr #####] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    const-class v3, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[##### View l_newPasswordStr #####] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    const-class v3, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[##### View l_confirmPasswordStr #####] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v6, :cond_1

    .line 1291
    :cond_0
    const v0, 0x7f0700a6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1311
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->showError(Landroid/app/Dialog;Ljava/lang/String;)V

    .line 1312
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 1292
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v6, :cond_3

    .line 1294
    :cond_2
    const v0, 0x7f0700a7

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1295
    :cond_3
    if-eqz v2, :cond_4

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v6, :cond_5

    .line 1297
    :cond_4
    const v0, 0x7f0700a8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1299
    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1301
    const v0, 0x7f0700aa

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1304
    :cond_6
    const v0, 0x7f0700ad

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->getString(I)Ljava/lang/String;

    .line 1305
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->doConfirm:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1306
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private deleteBusyDialog()V
    .locals 3

    .prologue
    .line 1211
    const-string v0, "CallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCheckAllCB : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mCheckAllCB:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSelectedIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSelectedIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPrevBusyDialog : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPrevBusyDialog:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    iget-boolean v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mCheckAllCB:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSelectedIndex:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 1217
    :goto_0
    return-void

    .line 1216
    :cond_0
    iget v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPrevBusyDialog:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->removeDialog(I)V

    goto :goto_0
.end method

.method private dismissCallWaiting()V
    .locals 1

    .prologue
    .line 1205
    sget-object v0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;->INPUT_READY:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->setAppState(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;)V

    .line 1207
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->finish()V

    .line 1208
    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1407
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1408
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1409
    return-void
.end method

.method private getCallBarring()V
    .locals 4

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_2

    .line 560
    sget-object v0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;->INITIAL_QUERY:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->setAppState(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;)V

    .line 562
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallBarring() radioState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhone : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    if-nez v0, :cond_0

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STATE_IN_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->requestCBQueryCommand()V

    .line 583
    :goto_0
    return-void

    .line 570
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STATE_POWER_OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const-string v0, "onCreate: radio not ready, waiting for signal."

    invoke-static {v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 576
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MSG_EXCEPTION"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    sget-object v0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    const/16 v1, 0xc8

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->setAppState(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;I)V

    goto :goto_0

    .line 580
    :cond_2
    const-string v0, "setDisplayMode: radio is off!"

    invoke-static {v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 581
    sget-object v0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    const/16 v1, 0x320

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->setAppState(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;I)V

    goto :goto_0
.end method

.method private handleQueryCBMessage(Landroid/os/AsyncResult;)I
    .locals 10
    .parameter "ar"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/16 v4, 0xc8

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 785
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    .line 786
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleQueryCBMessage() ar:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 787
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_0

    .line 788
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 789
    .local v0, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v3, :cond_0

    .line 791
    const/16 v3, 0x384

    .line 861
    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :goto_0
    return v3

    :cond_0
    move v3, v4

    .line 795
    goto :goto_0

    .line 797
    :cond_1
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v2, v3

    check-cast v2, [I

    .line 799
    .local v2, ints:[I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleQueryCBMessage() ints.length:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v5, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 803
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSelectedItem = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 805
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 806
    const-string v3, "ints["

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "]:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aget v5, v2, v1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 805
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 810
    :cond_2
    array-length v3, v2

    if-eqz v3, :cond_c

    .line 811
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleQueryCBMessage() ints[0]:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v5, v2, v7

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 812
    aget v3, v2, v7

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_7

    .line 814
    iget-boolean v3, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mCheckAllCB:Z

    if-nez v3, :cond_3

    const v3, 0x7f07009a

    invoke-virtual {p0, v3}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->displayToast(Ljava/lang/String;)V

    .line 816
    :cond_3
    iget v3, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSelectedIndex:I

    if-nez v3, :cond_4

    .line 817
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 818
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 821
    :cond_4
    iget v3, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSelectedIndex:I

    if-ne v3, v9, :cond_5

    .line 822
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 825
    :cond_5
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 827
    iput-boolean v6, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSkipCallBarringReq:Z

    .line 828
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 861
    :cond_6
    :goto_2
    const/16 v3, 0x64

    goto/16 :goto_0

    .line 832
    :cond_7
    aget v3, v2, v7

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_b

    .line 835
    iget-boolean v3, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mCheckAllCB:Z

    if-nez v3, :cond_8

    const v3, 0x7f070099

    invoke-virtual {p0, v3}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->displayToast(Ljava/lang/String;)V

    .line 837
    :cond_8
    iget v3, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSelectedIndex:I

    if-nez v3, :cond_9

    .line 838
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 839
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 842
    :cond_9
    iget v3, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSelectedIndex:I

    if-ne v3, v9, :cond_a

    .line 843
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 846
    :cond_a
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_6

    .line 848
    iput-boolean v6, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSkipCallBarringReq:Z

    .line 849
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    :cond_b
    move v3, v4

    .line 854
    goto/16 :goto_0

    :cond_c
    move v3, v4

    .line 857
    goto/16 :goto_0
.end method

.method private handleSetCBMessage(Landroid/os/AsyncResult;I)I
    .locals 4
    .parameter "ar"
    .parameter "arg1"

    .prologue
    const/16 v2, 0xc8

    const/16 v1, 0x64

    .line 865
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    .line 866
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetCBMessage() ar:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 868
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_2

    .line 869
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 870
    .local v0, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_0

    .line 872
    const/16 v1, 0x190

    .line 914
    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :goto_0
    return v1

    .line 873
    .restart local v0       #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_1

    .line 874
    const-string v1, "SIM_PUK2"

    invoke-direct {p0, v1}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->displayToast(Ljava/lang/String;)V

    move v1, v2

    .line 875
    goto :goto_0

    .line 877
    :cond_1
    iget v1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSelectedIndex:I

    packed-switch v1, :pswitch_data_0

    move v1, v2

    .line 890
    goto :goto_0

    .line 884
    :pswitch_0
    const/16 v1, 0x258

    goto :goto_0

    .line 887
    :pswitch_1
    const/16 v1, 0x1f4

    goto :goto_0

    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_2
    move v1, v2

    .line 895
    goto :goto_0

    .line 897
    :cond_3
    if-nez p2, :cond_5

    .line 899
    const-string v2, "handleSetCBMessage() has been processed ACTIVATE"

    invoke-static {v2}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 911
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->requestCBQueryCommand()V

    goto :goto_0

    .line 900
    :cond_5
    const/4 v2, 0x1

    if-ne p2, v2, :cond_6

    .line 901
    const-string v2, "handleSetCBMessage() has been processed DEACTIVATE"

    invoke-static {v2}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 902
    :cond_6
    const/4 v2, 0x2

    if-ne p2, v2, :cond_7

    .line 903
    const-string v2, "handleSetCBMessage() has been processed CANCELALL"

    invoke-static {v2}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 905
    :cond_7
    const/4 v2, 0x3

    if-ne p2, v2, :cond_4

    .line 906
    const-string v2, "handleSetCBMessage() has been processed CONFIRM"

    invoke-static {v2}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 907
    const v2, 0x7f0700a9

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->displayToast(Ljava/lang/String;)V

    goto :goto_0

    .line 877
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1404
    const-string v0, "## VideoCallBarring ##"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    return-void
.end method

.method private requestCBChangePassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "process"
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "confirmPassword"

    .prologue
    .line 1233
    const-string v1, "AB"

    .line 1234
    .local v1, facility:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->responseCBHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->responseCBHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    .line 1235
    return-void
.end method

.method private requestCBQueryCommand()V
    .locals 5

    .prologue
    .line 677
    const-string v0, "AO"

    .line 679
    .local v0, facility:Ljava/lang/String;
    iget v1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSelectedIndex:I

    packed-switch v1, :pswitch_data_0

    .line 705
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->responseCBHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->responseCBHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V

    .line 706
    return-void

    .line 681
    :pswitch_0
    const-string v0, "AO"

    .line 682
    goto :goto_0

    .line 685
    :pswitch_1
    const-string v0, "OI"

    .line 686
    goto :goto_0

    .line 689
    :pswitch_2
    const-string v0, "OX"

    .line 690
    goto :goto_0

    .line 693
    :pswitch_3
    const-string v0, "AI"

    .line 694
    goto :goto_0

    .line 697
    :pswitch_4
    const-string v0, "IR"

    .line 698
    goto :goto_0

    .line 701
    :pswitch_5
    const-string v0, "AB"

    goto :goto_0

    .line 679
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private requestCBSetCommand(I)V
    .locals 9
    .parameter "process"

    .prologue
    .line 621
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->callbarring_password:Ljava/lang/String;

    .line 622
    .local v3, password:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 624
    const-string v3, ""

    .line 627
    :cond_0
    const-string v2, "AO"

    .line 628
    .local v2, facility:Ljava/lang/String;
    const/4 v1, 0x0

    .line 629
    .local v1, bActivate:Z
    const/4 v4, 0x0

    .line 631
    .local v4, serviceClass:I
    packed-switch p1, :pswitch_data_0

    .line 643
    const-string v0, "requestCBSetCommand (process) Exception!"

    invoke-static {v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 646
    :goto_0
    iget v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSelectedIndex:I

    packed-switch v0, :pswitch_data_1

    .line 671
    :goto_1
    const/16 v4, 0x10

    .line 672
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->responseCBHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->responseCBHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, p1, v7, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z

    .line 674
    return-void

    .line 633
    :pswitch_0
    const/4 v1, 0x1

    .line 634
    goto :goto_0

    .line 636
    :pswitch_1
    const/4 v1, 0x0

    .line 637
    goto :goto_0

    .line 639
    :pswitch_2
    const/4 v1, 0x0

    .line 640
    goto :goto_0

    .line 648
    :pswitch_3
    const-string v2, "AO"

    .line 649
    goto :goto_1

    .line 652
    :pswitch_4
    const-string v2, "OI"

    .line 653
    goto :goto_1

    .line 656
    :pswitch_5
    const-string v2, "OX"

    .line 657
    goto :goto_1

    .line 660
    :pswitch_6
    const-string v2, "AI"

    .line 661
    goto :goto_1

    .line 664
    :pswitch_7
    const-string v2, "IR"

    .line 665
    goto :goto_1

    .line 667
    :pswitch_8
    const-string v2, "AB"

    goto :goto_1

    .line 631
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 646
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private setAppState(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;)V
    .locals 2
    .parameter "requestedState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 919
    sget-object v0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    if-ne p1, v0, :cond_0

    .line 920
    const-string v0, "setAppState: illegal error state without reason."

    invoke-static {v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 921
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal error state without reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 923
    :cond_0
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->setAppState(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;I)V

    .line 924
    return-void
.end method

.method private setAppState(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;I)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x1f4

    const/16 v6, 0x12c

    const/16 v5, 0xc8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAppState() mAppState:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mAppState:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " ,requestedState:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ",msgStatus:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mAppState:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    if-ne p1, v0, :cond_0

    .line 935
    const-string v0, "setAppState: requestedState same as current state. ignoring."

    invoke-static {v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 1061
    :goto_0
    return-void

    .line 941
    :cond_0
    sget-object v0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    if-ne p1, v0, :cond_6

    .line 942
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

    invoke-static {v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 946
    iget-boolean v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mVCBVisible:Z

    if-eqz v0, :cond_4

    .line 948
    sparse-switch p2, :sswitch_data_0

    .line 997
    :goto_1
    iget v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSelectedIndex:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSelectedIndex:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    .line 998
    iget-boolean v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mCheckAllCB:Z

    if-nez v0, :cond_1

    .line 999
    iput-boolean v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSkipCallBarringReq:Z

    .line 1000
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSelectedIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSelectedIndex:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1003
    :cond_1
    if-eq p2, v5, :cond_2

    const/16 v0, 0x320

    if-eq p2, v0, :cond_2

    if-eq p2, v6, :cond_2

    if-eq p2, v7, :cond_2

    const/16 v0, 0x384

    if-eq p2, v0, :cond_2

    const/16 v0, 0x258

    if-ne p2, v0, :cond_3

    .line 1007
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSelectedIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1011
    :cond_3
    iput-object p1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mAppState:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    goto :goto_0

    .line 950
    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->deleteBusyDialog()V

    .line 952
    invoke-virtual {p0, v5}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->showDialog(I)V

    goto :goto_1

    .line 956
    :sswitch_1
    const/16 v0, 0x320

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->showDialog(I)V

    goto :goto_1

    .line 960
    :sswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->deleteBusyDialog()V

    .line 962
    invoke-virtual {p0, v6}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->showDialog(I)V

    goto :goto_1

    .line 966
    :sswitch_3
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->deleteBusyDialog()V

    .line 968
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->showDialog(I)V

    goto :goto_1

    .line 972
    :sswitch_4
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->deleteBusyDialog()V

    .line 974
    invoke-virtual {p0, v7}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->showDialog(I)V

    goto :goto_1

    .line 978
    :sswitch_5
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->deleteBusyDialog()V

    .line 980
    const/16 v0, 0x258

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->showDialog(I)V

    goto :goto_1

    .line 983
    :sswitch_6
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->deleteBusyDialog()V

    .line 985
    const/16 v0, 0x2bc

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->showDialog(I)V

    goto/16 :goto_1

    .line 993
    :cond_4
    const-string v0, "VideoCallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mVCBVisible : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mVCBVisible:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " so, skip displaying error dialog"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->deleteBusyDialog()V

    goto/16 :goto_1

    :cond_5
    move v1, v3

    .line 1000
    goto/16 :goto_2

    .line 1015
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mAppState:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 1017
    sget-object v0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$13;->$SwitchMap$com$sec$android$app$callsetting$videocall$VideoCallBarring$AppState:[I

    iget-object v1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mAppState:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    invoke-virtual {v1}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1060
    :cond_7
    :goto_3
    iput-object p1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mAppState:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    goto/16 :goto_0

    .line 1021
    :pswitch_0
    sget-object v0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;->INPUT_READY:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    if-eq p1, v0, :cond_7

    .line 1022
    const-string v0, "setAppState: illegal transition from NETWORK_ERROR"

    invoke-static {v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 1023
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from NETWORK_ERROR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1028
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

    invoke-static {v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 1029
    iget-boolean v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mVCBVisible:Z

    if-eqz v0, :cond_9

    .line 1030
    sget-object v0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;->INITIAL_QUERY:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    if-ne p1, v0, :cond_8

    .line 1031
    const/16 v0, 0x384

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->showDialog(I)V

    goto :goto_3

    .line 1032
    :cond_8
    sget-object v0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;->BUSY_NETWORK_CONNECT:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    if-ne p1, v0, :cond_7

    .line 1033
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->showDialog(I)V

    goto :goto_3

    .line 1037
    :cond_9
    const-string v0, "CallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVCBVisible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mVCBVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " so, skip displaying init dialog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1042
    :pswitch_2
    sget-object v0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;->INPUT_READY:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    if-eq p1, v0, :cond_a

    .line 1043
    const-string v0, "setAppState: illegal transition from INITIAL_QUERY"

    invoke-static {v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 1044
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from INITIAL_QUERY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1048
    :cond_a
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->deleteBusyDialog()V

    goto :goto_3

    .line 1051
    :pswitch_3
    sget-object v0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;->INPUT_READY:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    if-eq p1, v0, :cond_b

    .line 1052
    const-string v0, "setAppState: illegal transition from BUSY_NETWORK_CONNECT"

    invoke-static {v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 1053
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from BUSY_NETWORK_CONNECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1057
    :cond_b
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->deleteBusyDialog()V

    goto/16 :goto_3

    .line 948
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_2
        0x190 -> :sswitch_3
        0x1f4 -> :sswitch_4
        0x258 -> :sswitch_5
        0x320 -> :sswitch_1
        0x384 -> :sswitch_6
    .end sparse-switch

    .line 1017
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setCallBarring(I)V
    .locals 4
    .parameter

    .prologue
    .line 587
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_2

    .line 593
    sget-object v0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;->BUSY_NETWORK_CONNECT:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->setAppState(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;)V

    .line 595
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCallBarring() radioState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhone : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    if-nez v0, :cond_0

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STATE_IN_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->requestCBSetCommand(I)V

    .line 616
    :goto_0
    return-void

    .line 603
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STATE_POWER_OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const-string v0, "onCreate: radio not ready, waiting for signal."

    invoke-static {v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 609
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MSG_EXCEPTION"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    sget-object v0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    const/16 v1, 0xc8

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->setAppState(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;I)V

    goto :goto_0

    .line 613
    :cond_2
    const-string v0, "setDisplayMode: radio is off!"

    invoke-static {v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 614
    sget-object v0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    const/16 v1, 0x320

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->setAppState(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;I)V

    goto :goto_0
.end method

.method private showError(Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1271
    const v0, 0x7f080020

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1272
    if-eqz v0, :cond_0

    .line 1273
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1274
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1276
    :cond_0
    return-void
.end method

.method private showPasswordDialog()V
    .locals 3

    .prologue
    .line 1330
    const v0, 0x7f030008

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1340
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0700c8

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x104

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1347
    invoke-virtual {v2, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1361
    const v0, 0x7f080022

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mOldPassword:Landroid/widget/EditText;

    .line 1362
    const v0, 0x7f080023

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mNewPassword:Landroid/widget/EditText;

    .line 1363
    const v0, 0x7f080024

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mConfirmPassword:Landroid/widget/EditText;

    .line 1365
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSelectedIndex:I

    .line 1366
    sget-object v0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;->INPUT_READY:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->setAppState(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;)V

    .line 1368
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1369
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 1316
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPwdChangeSubmit:Z

    .line 1317
    return-void

    .line 1316
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f040007

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 215
    const-string v2, "vcallbarring_baoc_pref"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mCallBarringList1Pref:Landroid/preference/CheckBoxPreference;

    .line 216
    const-string v2, "vcallbarring_baoic_pref"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mCallBarringList2Pref:Landroid/preference/CheckBoxPreference;

    .line 217
    const-string v2, "vcallbarring_baoicxh_pref"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mCallBarringList3Pref:Landroid/preference/CheckBoxPreference;

    .line 218
    const-string v2, "vcallbarring_baic_pref"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mCallBarringList4Pref:Landroid/preference/CheckBoxPreference;

    .line 219
    const-string v2, "vcallbarring_baicr_pref"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mCallBarringList5Pref:Landroid/preference/CheckBoxPreference;

    .line 221
    iget-object v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mCallBarringList1Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mCallBarringList2Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mCallBarringList3Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mCallBarringList4Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mCallBarringList5Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->factory:Landroid/view/LayoutInflater;

    .line 228
    iget-object v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->factory:Landroid/view/LayoutInflater;

    const/high16 v3, 0x7f03

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->textEntryView:Landroid/view/View;

    .line 229
    iget-object v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->textEntryView:Landroid/view/View;

    const/high16 v3, 0x7f08

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->editText:Landroid/widget/EditText;

    .line 231
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 234
    new-instance v2, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$1;-><init>(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)V

    iput-object v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->doActivate:Ljava/lang/Runnable;

    .line 252
    new-instance v2, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$2;-><init>(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)V

    iput-object v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->doDeactivate:Ljava/lang/Runnable;

    .line 269
    new-instance v2, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$3;-><init>(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)V

    iput-object v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->doCheckStatus:Ljava/lang/Runnable;

    .line 275
    new-instance v2, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$4;-><init>(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)V

    iput-object v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->doConfirm:Ljava/lang/Runnable;

    .line 286
    sget-object v2, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;->INPUT_READY:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    iput-object v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mAppState:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    .line 287
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 289
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 291
    iget-object v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 294
    :cond_1
    const/16 v2, 0xc8

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->showDialog(I)V

    .line 295
    const-string v2, "VideoCallBarring"

    const-string v3, "skip set or get CallBarring"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 298
    iget-object v2, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 302
    .end local v1           #i:I
    :cond_2
    iput-boolean v5, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mCheckAllCB:Z

    .line 303
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->getCallBarring()V

    .line 304
    :cond_3
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 11
    .parameter "id"

    .prologue
    const v8, 0x7f0700ad

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 408
    sparse-switch p1, :sswitch_data_0

    .line 539
    const v4, 0x7f0700a3

    .line 540
    .local v4, msgId:I
    const v6, 0x7f070087

    .line 541
    .local v6, titleId:I
    packed-switch p1, :pswitch_data_0

    .line 546
    :goto_0
    invoke-virtual {p0, v4}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->displayToast(Ljava/lang/String;)V

    .line 549
    .end local v4           #msgId:I
    .end local v6           #titleId:I
    :goto_1
    const/4 v1, 0x0

    :goto_2
    return-object v1

    .line 412
    :sswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 413
    .local v0, BADialog:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0700c6

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 414
    iget-object v7, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->textEntryView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 416
    new-instance v7, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$6;

    invoke-direct {v7, p0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$6;-><init>(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)V

    invoke-virtual {v0, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 429
    const v7, 0x7f0700ae

    new-instance v8, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$7;

    invoke-direct {v8, p0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$7;-><init>(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 438
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 439
    new-instance v7, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$8;

    invoke-direct {v7, p0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$8;-><init>(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 447
    new-instance v5, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v5}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    .line 448
    .local v5, ptm:Landroid/text/method/PasswordTransformationMethod;
    new-array v3, v9, [Landroid/text/InputFilter;

    .line 449
    .local v3, filterArray:[Landroid/text/InputFilter;
    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v7, v3, v10

    .line 451
    iget-object v7, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->editText:Landroid/widget/EditText;

    const/16 v8, 0x83

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 452
    iget-object v7, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->editText:Landroid/widget/EditText;

    invoke-virtual {v7, v5}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 453
    iget-object v7, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->editText:Landroid/widget/EditText;

    invoke-virtual {v7, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 454
    iget-object v7, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->editText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->requestFocus()Z

    .line 456
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_2

    .line 461
    .end local v0           #BADialog:Landroid/app/AlertDialog$Builder;
    .end local v3           #filterArray:[Landroid/text/InputFilter;
    .end local v5           #ptm:Landroid/text/method/PasswordTransformationMethod;
    :sswitch_1
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 462
    .local v1, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {v1, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 464
    iput p1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPrevBusyDialog:I

    .line 466
    sparse-switch p1, :sswitch_data_1

    goto :goto_1

    .line 468
    :sswitch_2
    invoke-virtual {v1, v10}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 469
    const v7, 0x7f0700bb

    invoke-virtual {p0, v7}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 473
    :sswitch_3
    invoke-virtual {v1, v9}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 474
    const v7, 0x7f0700ba

    invoke-virtual {p0, v7}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 475
    iget-object v7, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v8, 0x258

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setCancelMessage(Landroid/os/Message;)V

    goto/16 :goto_2

    .line 490
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :sswitch_4
    const v6, 0x7f0700b9

    .line 491
    .restart local v6       #titleId:I
    sparse-switch p1, :sswitch_data_2

    .line 516
    const v4, 0x7f0700bd

    .line 520
    .restart local v4       #msgId:I
    :goto_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 521
    .local v2, err_builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 522
    invoke-virtual {p0, v6}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 523
    const v7, 0x1080027

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 524
    invoke-virtual {p0, v4}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 525
    invoke-virtual {p0, v8}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    new-instance v8, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$9;

    invoke-direct {v8, p0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$9;-><init>(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)V

    invoke-virtual {v2, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 533
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 534
    .local v1, dialog:Landroid/app/AlertDialog;
    goto/16 :goto_2

    .line 493
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #err_builder:Landroid/app/AlertDialog$Builder;
    .end local v4           #msgId:I
    :sswitch_5
    const v4, 0x7f0700bc

    .line 494
    .restart local v4       #msgId:I
    goto :goto_3

    .line 497
    .end local v4           #msgId:I
    :sswitch_6
    const v4, 0x7f0700be

    .line 498
    .restart local v4       #msgId:I
    goto :goto_3

    .line 501
    .end local v4           #msgId:I
    :sswitch_7
    const v4, 0x7f0700a3

    .line 502
    .restart local v4       #msgId:I
    goto :goto_3

    .line 505
    .end local v4           #msgId:I
    :sswitch_8
    const v4, 0x7f0700a4

    .line 506
    .restart local v4       #msgId:I
    goto :goto_3

    .line 509
    .end local v4           #msgId:I
    :sswitch_9
    const v4, 0x7f0700a5

    .line 510
    .restart local v4       #msgId:I
    goto :goto_3

    .line 512
    .end local v4           #msgId:I
    :sswitch_a
    const v4, 0x7f070096

    .line 513
    .restart local v4       #msgId:I
    goto :goto_3

    .line 543
    :pswitch_0
    const v4, 0x7f0700a3

    goto/16 :goto_0

    .line 408
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_4
        0x12c -> :sswitch_4
        0x190 -> :sswitch_4
        0x1f4 -> :sswitch_4
        0x258 -> :sswitch_4
        0x2bc -> :sswitch_4
        0x320 -> :sswitch_4
        0x384 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch

    .line 541
    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_0
    .end packed-switch

    .line 466
    :sswitch_data_1
    .sparse-switch
        0x64 -> :sswitch_2
        0x384 -> :sswitch_3
    .end sparse-switch

    .line 491
    :sswitch_data_2
    .sparse-switch
        0x12c -> :sswitch_5
        0x190 -> :sswitch_7
        0x1f4 -> :sswitch_8
        0x258 -> :sswitch_9
        0x2bc -> :sswitch_a
        0x320 -> :sswitch_6
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1225
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1226
    const v0, 0x7f0700c8

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020013

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1228
    return v2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1320
    iget-boolean v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPwdChangeSubmit:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mPwdChangeSubmit:Z

    move-object v0, p1

    .line 1322
    check-cast v0, Landroid/app/Dialog;

    invoke-direct {p0, v0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->checkPassword(Landroid/app/Dialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1323
    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 1327
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1373
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 1375
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1400
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1378
    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1379
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.CallTypeSelect"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1380
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1381
    const-string v2, "com.android.phone.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1382
    const-string v2, "SS_Type"

    const-string v3, "barring"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1383
    invoke-virtual {p0, v1}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->startActivity(Landroid/content/Intent;)V

    .line 1384
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->finish()V

    goto :goto_0

    .line 1397
    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->showPasswordDialog()V

    goto :goto_0

    .line 1375
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 326
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 328
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 330
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 312
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mVCBVisible:Z

    .line 318
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 346
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "========== onSharedPreferenceChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 348
    const-string v1, "vcallbarring_baoc_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 351
    .local v0, isChecked:Z
    iput v4, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSelectedIndex:I

    .line 352
    iput-boolean v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mVCB_Checked:Z

    .line 355
    .end local v0           #isChecked:Z
    :cond_0
    const-string v1, "vcallbarring_baoic_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 358
    .restart local v0       #isChecked:Z
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSelectedIndex:I

    .line 359
    iput-boolean v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mVCB_Checked:Z

    .line 362
    .end local v0           #isChecked:Z
    :cond_1
    const-string v1, "vcallbarring_baoicxh_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 364
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 365
    .restart local v0       #isChecked:Z
    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSelectedIndex:I

    .line 366
    iput-boolean v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mVCB_Checked:Z

    .line 369
    .end local v0           #isChecked:Z
    :cond_2
    const-string v1, "vcallbarring_baic_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 371
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 372
    .restart local v0       #isChecked:Z
    const/4 v1, 0x3

    iput v1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSelectedIndex:I

    .line 373
    iput-boolean v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mVCB_Checked:Z

    .line 376
    .end local v0           #isChecked:Z
    :cond_3
    const-string v1, "vcallbarring_baicr_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 378
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 379
    .restart local v0       #isChecked:Z
    const/4 v1, 0x4

    iput v1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSelectedIndex:I

    .line 380
    iput-boolean v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mVCB_Checked:Z

    .line 383
    .end local v0           #isChecked:Z
    :cond_4
    iget-boolean v1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSkipCallBarringReq:Z

    if-eqz v1, :cond_5

    .line 385
    iput-boolean v4, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mSkipCallBarringReq:Z

    .line 402
    :goto_0
    return-void

    .line 389
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->editText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 390
    iget-object v1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->editText:Landroid/widget/EditText;

    const v2, 0x7f0700c7

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 392
    sget-object v1, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;->INPUT_READY:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    iput-object v1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mAppState:Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$AppState;

    .line 393
    const/16 v1, 0x3e8

    invoke-virtual {p0, v1}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->showDialog(I)V

    .line 395
    iget-object v1, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring$5;-><init>(Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 333
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/callsetting/videocall/VideoCallBarring;->mVCBVisible:Z

    .line 336
    return-void
.end method
