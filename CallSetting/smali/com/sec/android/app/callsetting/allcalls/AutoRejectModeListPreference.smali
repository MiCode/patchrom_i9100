.class public Lcom/sec/android/app/callsetting/allcalls/AutoRejectModeListPreference;
.super Landroid/preference/ListPreference;
.source "AutoRejectModeListPreference.java"


# instance fields
.field private final AUTOREJECT_MODE_OFF:I

.field private final AUTOREJECT_MODE_ONLY_BLACK_LIST:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectModeListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectModeListPreference;->AUTOREJECT_MODE_OFF:I

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectModeListPreference;->AUTOREJECT_MODE_ONLY_BLACK_LIST:I

    .line 38
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 77
    const-string v0, "AutorejectPreference"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 4
    .parameter "positiveResult"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 47
    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectModeListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectModeListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 49
    .local v0, autorejectMode:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set to autorejectMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectModeListPreference;->log(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectModeListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "autoreject_mode"

    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectModeListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectModeListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 53
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectModeListPreference;->updateState()V

    .line 54
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectModeListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectBootReceiver;->updateAutoRejectNotification(Landroid/content/Context;)V

    .line 56
    .end local v0           #autorejectMode:I
    :cond_0
    return-void
.end method

.method public updateState()V
    .locals 5

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectModeListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, summaryString:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectModeListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "autoreject_mode"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 72
    .local v0, autorejectMode:I
    aget-object v2, v1, v0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectModeListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectModeListPreference;->setValueIndex(I)V

    .line 74
    return-void
.end method
