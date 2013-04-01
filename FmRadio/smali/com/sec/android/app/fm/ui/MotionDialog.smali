.class public Lcom/sec/android/app/fm/ui/MotionDialog;
.super Landroid/app/AlertDialog;
.source "MotionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mCheck:Landroid/widget/CheckBox;

.field private mImageMotion:Landroid/widget/ImageView;

.field private mTextMotionDisabled:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 30
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030011

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 32
    .local v0, layout:Landroid/view/View;
    const v2, 0x7f070082

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/sec/android/app/fm/ui/MotionDialog;->mCheck:Landroid/widget/CheckBox;

    .line 33
    iget-object v2, p0, Lcom/sec/android/app/fm/ui/MotionDialog;->mCheck:Landroid/widget/CheckBox;

    new-instance v3, Lcom/sec/android/app/fm/ui/MotionDialog$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/fm/ui/MotionDialog$1;-><init>(Lcom/sec/android/app/fm/ui/MotionDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v2, p0, Lcom/sec/android/app/fm/ui/MotionDialog;->mCheck:Landroid/widget/CheckBox;

    new-instance v3, Lcom/sec/android/app/fm/ui/MotionDialog$2;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/app/fm/ui/MotionDialog$2;-><init>(Lcom/sec/android/app/fm/ui/MotionDialog;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 49
    const-string v2, "SettingsPreference"

    invoke-virtual {p1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 51
    .local v1, sp:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/sec/android/app/fm/ui/MotionDialog;->mCheck:Landroid/widget/CheckBox;

    const-string v3, "motion"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 52
    const v2, 0x7f070081

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/fm/ui/MotionDialog;->mTextMotionDisabled:Landroid/widget/TextView;

    .line 54
    const v2, 0x7f070080

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/fm/ui/MotionDialog;->mImageMotion:Landroid/widget/ImageView;

    .line 56
    const v2, 0x7f0a00ba

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/ui/MotionDialog;->setTitle(I)V

    .line 58
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/ui/MotionDialog;->setView(Landroid/view/View;)V

    .line 60
    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/MotionDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a00bf

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Lcom/sec/android/app/fm/ui/MotionDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 61
    const/4 v2, -0x2

    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/MotionDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a00be

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Lcom/sec/android/app/fm/ui/MotionDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 62
    const/4 v2, -0x3

    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/MotionDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0027

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Lcom/sec/android/app/fm/ui/MotionDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 64
    invoke-virtual {p0, v5}, Lcom/sec/android/app/fm/ui/MotionDialog;->setIcon(I)V

    .line 65
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v5, -0x3

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/MotionDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_engine"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/MotionDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_overturn"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 94
    invoke-virtual {p0, v7}, Lcom/sec/android/app/fm/ui/MotionDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 95
    invoke-virtual {p0, v6}, Lcom/sec/android/app/fm/ui/MotionDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 96
    invoke-virtual {p0, v5}, Lcom/sec/android/app/fm/ui/MotionDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 97
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/MotionDialog;->mTextMotionDisabled:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/MotionDialog;->mImageMotion:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 105
    .local v0, ani:Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 107
    :cond_0
    invoke-super {p0}, Landroid/app/AlertDialog;->onAttachedToWindow()V

    .line 108
    return-void

    .line 99
    .end local v0           #ani:Landroid/graphics/drawable/AnimationDrawable;
    :cond_1
    invoke-virtual {p0, v7}, Lcom/sec/android/app/fm/ui/MotionDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 100
    invoke-virtual {p0, v6}, Lcom/sec/android/app/fm/ui/MotionDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 101
    invoke-virtual {p0, v5}, Lcom/sec/android/app/fm/ui/MotionDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 102
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/MotionDialog;->mTextMotionDisabled:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 69
    packed-switch p2, :pswitch_data_0

    .line 88
    :goto_0
    :pswitch_0
    return-void

    .line 71
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/MotionDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_engine"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 72
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/MotionDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_overturn"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, settingIntent:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/MotionDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 113
    if-eqz p1, :cond_0

    .line 114
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v0, v0, Lcom/sec/android/app/fm/MainActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/MainActivity;->startBargeIn()V

    .line 120
    :cond_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onWindowFocusChanged(Z)V

    .line 121
    return-void
.end method
