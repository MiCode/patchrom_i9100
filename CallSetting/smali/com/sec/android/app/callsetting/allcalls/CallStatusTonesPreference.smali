.class public Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;
.super Landroid/preference/DialogPreference;
.source "CallStatusTonesPreference.java"


# instance fields
.field private mCallStatusTonesChecked:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;->mCallStatusTonesChecked:[Z

    .line 54
    return-void

    .line 49
    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;->mCallStatusTonesChecked:[Z

    return-object v0
.end method

.method private getValueIndex()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 68
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "call_conn_tone"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 69
    .local v0, callconntone:I
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "min_minder"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 70
    .local v2, minminder:I
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "call_end_tone"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 73
    .local v1, callendtone:I
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;->mCallStatusTonesChecked:[Z

    if-lez v0, :cond_0

    move v3, v4

    :goto_0
    aput-boolean v3, v6, v5

    .line 74
    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;->mCallStatusTonesChecked:[Z

    if-lez v2, :cond_1

    move v3, v4

    :goto_1
    aput-boolean v3, v6, v4

    .line 75
    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;->mCallStatusTonesChecked:[Z

    const/4 v6, 0x2

    if-lez v1, :cond_2

    :goto_2
    aput-boolean v4, v3, v6

    .line 76
    return-void

    :cond_0
    move v3, v5

    .line 73
    goto :goto_0

    :cond_1
    move v3, v5

    .line 74
    goto :goto_1

    :cond_2
    move v4, v5

    .line 75
    goto :goto_2
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 0
    .parameter "positiveResult"

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 121
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .parameter "builder"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 82
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070062

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070063

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070064

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    .line 86
    .local v0, mEntries:[Ljava/lang/CharSequence;
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;->getValueIndex()V

    .line 89
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;->mCallStatusTonesChecked:[Z

    new-instance v2, Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference$1;-><init>(Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 97
    const v1, 0x7f0700ad

    new-instance v2, Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference$2;-><init>(Lcom/sec/android/app/callsetting/allcalls/CallStatusTonesPreference;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 115
    return-void
.end method
