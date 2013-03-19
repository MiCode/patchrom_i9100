.class public Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;
.super Landroid/app/Fragment;
.source "ChooseLockMotion.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockMotionFragment"
.end annotation


# static fields
.field private static final mAnimationImage:[I


# instance fields
.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mCancelButton:Landroid/widget/Button;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mContentTextView:Landroid/widget/TextView;

.field private mOKButton:Landroid/widget/Button;

.field private mTryTutorialButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationImage:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x95t 0x2t 0x2t 0x7ft
        0x96t 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationIndex:I

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationView:Landroid/widget/ImageView;

    .line 76
    new-instance v0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment$1;-><init>(Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->updateAnimation()V

    return-void
.end method

.method private broadcastMotionChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 207
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 210
    return-void
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 200
    const-string v0, "ChooseLockMotionFragment"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 204
    :cond_0
    return-void
.end method

.method private updateAnimation()V
    .locals 4

    .prologue
    const/16 v3, 0x66

    .line 172
    const-string v0, "ChooseLockMotionFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGE_ANIMATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationView:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationImage:[I

    iget v2, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    iget v0, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationIndex:I

    .line 178
    :cond_0
    iget v0, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationIndex:I

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationIndex:I

    .line 180
    iget-object v0, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 181
    invoke-direct {p0}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->stopAnimation()V

    .line 182
    iget v0, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationIndex:I

    if-nez v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 189
    :cond_1
    :goto_0
    return-void

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 150
    iget-object v1, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setResult(I)V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mOKButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_2

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_engine"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 156
    invoke-direct {p0, v3}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->broadcastMotionChanged(Z)V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_motion_tilt_to_unlock"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 158
    iget-object v1, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 159
    iget-object v1, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 162
    :cond_2
    iget-object v1, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mTryTutorialButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_engine"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 164
    invoke-direct {p0, v3}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->broadcastMotionChanged(Z)V

    .line 165
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 166
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.tilttounlock.TILTTOUNLOCKTUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 109
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 115
    const v4, 0x7f04001f

    invoke-virtual {p1, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 117
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0b0041

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationView:Landroid/widget/ImageView;

    .line 118
    const v4, 0x7f0b0040

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mContentTextView:Landroid/widget/TextView;

    .line 119
    const v4, 0x7f0b003f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mCancelButton:Landroid/widget/Button;

    .line 120
    const v4, 0x7f0b003c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mOKButton:Landroid/widget/Button;

    .line 121
    const v4, 0x7f0b0042

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mTryTutorialButton:Landroid/widget/Button;

    .line 123
    const-string v2, ". "

    .line 124
    .local v2, dot:Ljava/lang/String;
    const-string v4, "ja"

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 125
    const-string v2, " "

    .line 127
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f090aab

    invoke-virtual {p0, v5}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f090aac

    invoke-virtual {p0, v5}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, content_string:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mContentTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v4, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v4, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mOKButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v4, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mTryTutorialButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "confirm_credentials"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 137
    .local v0, confirmCredentials:Z
    if-nez p3, :cond_1

    .line 138
    if-eqz v0, :cond_2

    .line 139
    iget-object v4, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    const/16 v5, 0x37

    invoke-virtual {v4, v5, v7, v7}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 146
    :cond_1
    :goto_0
    return-object v3

    .line 143
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->updateAnimation()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 95
    invoke-direct {p0}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->stopAnimation()V

    .line 96
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 89
    invoke-direct {p0}, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->updateAnimation()V

    .line 90
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 100
    const-string v0, "ChooseLockMotionFragment"

    const-string v1, "onStop : remove handler message"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/android/settings/ChooseLockMotion$ChooseLockMotionFragment;->mAnimationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 102
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 103
    return-void
.end method
