.class public Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;
.super Landroid/preference/DialogPreference;
.source "CLIRListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference$MyHandler;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field clirArray:[I

.field private mClickedDialogEntryIndex:I

.field private mHandler:Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference$MyHandler;

.field private mSelectedCLIRValue:I

.field private mValue:Ljava/lang/String;

.field private mWaitDialog:Landroid/app/ProgressDialog;

.field phone:Lcom/android/internal/telephony/Phone;

.field shownum_items:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-boolean v4, p0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->DBG:Z

    .line 46
    new-instance v0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference$MyHandler;-><init>(Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference$1;)V

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->mHandler:Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference$MyHandler;

    .line 49
    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->mWaitDialog:Landroid/app/ProgressDialog;

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f07004a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07004b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f07004c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->shownum_items:[Ljava/lang/CharSequence;

    .line 63
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->phone:Lcom/android/internal/telephony/Phone;

    .line 64
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->mSelectedCLIRValue:I

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->mSelectedCLIRValue:I

    return p1
.end method

.method static synthetic access$202(Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->mClickedDialogEntryIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->deleteBusyDialog()V

    return-void
.end method

.method private deleteBusyDialog()V
    .locals 3

    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/app/callsetting/allcalls/AllCalls;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### deleteBusyDialog mWaitDialog:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->mWaitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ####"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->mWaitDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->mWaitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->mWaitDialog:Landroid/app/ProgressDialog;

    .line 251
    :cond_0
    return-void
.end method


# virtual methods
.method handleGetCLIRResult([I)V
    .locals 6
    .parameter "tmpClirArray"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 140
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->clirArray:[I

    .line 141
    aget v4, p1, v3

    if-eq v4, v3, :cond_0

    aget v4, p1, v3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    aget v4, p1, v3

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    :cond_0
    move v0, v3

    .line 145
    .local v0, enabled:Z
    :goto_0
    const/4 v1, 0x0

    .line 146
    .local v1, value:I
    aget v3, p1, v3

    packed-switch v3, :pswitch_data_0

    .line 169
    :pswitch_0
    const/4 v1, 0x0

    .line 173
    :goto_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->responseResult(I)V

    .line 175
    return-void

    .end local v0           #enabled:Z
    .end local v1           #value:I
    :cond_1
    move v0, v2

    .line 141
    goto :goto_0

    .line 150
    .restart local v0       #enabled:Z
    .restart local v1       #value:I
    :pswitch_1
    aget v2, p1, v2

    packed-switch v2, :pswitch_data_1

    .line 162
    const/4 v1, 0x0

    .line 163
    goto :goto_1

    .line 153
    :pswitch_2
    const/4 v1, 0x2

    .line 154
    goto :goto_1

    .line 157
    :pswitch_3
    const/4 v1, 0x1

    .line 158
    goto :goto_1

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 150
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onDialogClosed(Z)V
    .locals 5
    .parameter "positiveResult"

    .prologue
    const/4 v4, 0x1

    .line 118
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 120
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->mSelectedCLIRValue:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->shownum_items:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->mClickedDialogEntryIndex:I

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->mHandler:Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference$MyHandler;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 122
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0700bb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->mWaitDialog:Landroid/app/ProgressDialog;

    .line 125
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 5
    .parameter "builder"

    .prologue
    const/4 v4, 0x0

    .line 78
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 80
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "clir_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 82
    .local v0, clirMode:I
    const v1, 0x7f070049

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 83
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->shownum_items:[Ljava/lang/CharSequence;

    new-instance v2, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference$1;-><init>(Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;)V

    invoke-virtual {p1, v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 112
    invoke-virtual {p1, v4, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 114
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 129
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->setValue(Ljava/lang/String;)V

    .line 130
    return-void

    .line 129
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method protected responseResult(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 133
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->shownum_items:[Ljava/lang/CharSequence;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, clir_value:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->setValue(Ljava/lang/String;)V

    .line 137
    :cond_0
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->mValue:Ljava/lang/String;

    .line 73
    invoke-virtual {p0, p1}, Lcom/sec/android/app/callsetting/allcalls/CLIRListPreference;->persistString(Ljava/lang/String;)Z

    .line 74
    return-void
.end method
