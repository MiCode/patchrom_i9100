.class public final Lcom/android/settings/FingerAirViewEnabler;
.super Ljava/lang/Object;
.source "FingerAirViewEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 1
    .parameter "context"
    .parameter "switch_"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    .line 35
    iput-object p1, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    .line 37
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_air_view"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 63
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 45
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 41
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 5
    .parameter "switch_"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    iget-object v3, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v3, p1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v3, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 52
    iput-object p1, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    .line 53
    iget-object v3, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 55
    iget-object v3, p0, Lcom/android/settings/FingerAirViewEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 57
    .local v0, fingerAirViewState:I
    iget-object v3, p0, Lcom/android/settings/FingerAirViewEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, v1, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
