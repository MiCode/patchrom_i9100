.class public Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;
.super Landroid/preference/DialogPreference;
.source "AlertOnCallPreference.java"


# instance fields
.field private TTS_INSTALLED_CHECK:I

.field private mClickedDialogEntryIndex:I

.field private mTTSDialog:Landroid/app/AlertDialog;

.field private mTTSinstalled:Z

.field private mValue:Ljava/lang/String;

.field single_items:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    iput v5, p0, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->TTS_INSTALLED_CHECK:I

    .line 56
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070067

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070068

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070069

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f07006a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->single_items:[Ljava/lang/CharSequence;

    .line 61
    iput-boolean v5, p0, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->mTTSinstalled:Z

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->mTTSDialog:Landroid/app/AlertDialog;

    .line 69
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 70
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0700ac

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700ad

    new-instance v3, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference$2;-><init>(Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700ae

    new-instance v3, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference$1;-><init>(Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 91
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->mTTSDialog:Landroid/app/AlertDialog;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->mTTSinstalled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->mTTSDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->mClickedDialogEntryIndex:I

    return p1
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 4
    .parameter "positiveResult"

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 138
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->mClickedDialogEntryIndex:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->single_items:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->single_items:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->mClickedDialogEntryIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, value:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "alertoncall_mode"

    iget v3, p0, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->mClickedDialogEntryIndex:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 143
    const-string v1, "AlertOnCall"

    const-string v2, "notifyChanged()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->setValue(Ljava/lang/String;)V

    .line 148
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 5
    .parameter "builder"

    .prologue
    const/4 v4, 0x0

    .line 109
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 111
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "alertoncall_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 113
    .local v0, alertMode:I
    const v1, 0x7f070081

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 114
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->single_items:[Ljava/lang/CharSequence;

    new-instance v2, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference$3;-><init>(Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;)V

    invoke-virtual {p1, v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 130
    invoke-virtual {p1, v4, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 132
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .parameter "restoreValue"
    .parameter "defaultValue"

    .prologue
    .line 156
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->setValue(Ljava/lang/String;)V

    .line 157
    return-void

    .line 156
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public setTTSinstalled(Z)V
    .locals 0
    .parameter "installed"

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->mTTSinstalled:Z

    .line 152
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->mValue:Ljava/lang/String;

    .line 102
    invoke-virtual {p0, p1}, Lcom/sec/android/app/callsetting/allcalls/AlertOnCallPreference;->persistString(Ljava/lang/String;)Z

    .line 103
    return-void
.end method
