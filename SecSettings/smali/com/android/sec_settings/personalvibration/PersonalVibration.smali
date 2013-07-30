.class public Lcom/android/sec_settings/personalvibration/PersonalVibration;
.super Landroid/app/Activity;
.source "PersonalVibration.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sec_settings/personalvibration/PersonalVibration$BackgroundViewHandler;
    }
.end annotation


# instance fields
.field backView:Lcom/android/sec_settings/personalvibration/BackgroundView;

.field buttonLayout:Landroid/widget/LinearLayout;

.field centerButton:Landroid/widget/Button;

.field centerText:Landroid/widget/TextView;

.field leftButton:Landroid/widget/Button;

.field mDialog:Landroid/app/AlertDialog;

.field private mEditPattern:Landroid/widget/TextView;

.field private mFromContact:Ljava/lang/Boolean;

.field mHandler:Landroid/os/Handler;

.field mOkBtn:Landroid/widget/Button;

.field patternLong:[J

.field rightButton:Landroid/widget/Button;

.field stopButton:Landroid/widget/Button;

.field stopButtonLayout:Landroid/widget/LinearLayout;

.field vib:Landroid/os/SystemVibrator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    .line 56
    iput-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->patternLong:[J

    .line 194
    return-void
.end method

.method public static StringToLongArray(Ljava/lang/String;)[J
    .locals 7
    .parameter "string"

    .prologue
    .line 378
    const-string v3, ", "

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, temp:[Ljava/lang/String;
    const-string v3, "PersonalVibration"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StringToLongArray, size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    array-length v3, v2

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    .line 384
    const-string v3, "PersonalVibration"

    const-string v4, "string is null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const/4 v1, 0x0

    .line 395
    :cond_0
    return-object v1

    .line 388
    :cond_1
    array-length v3, v2

    new-array v1, v3, [J

    .line 390
    .local v1, ret:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 391
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v0

    .line 393
    const-string v3, "PersonalVibration"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ret["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-wide v5, v1, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/sec_settings/personalvibration/PersonalVibration;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/sec_settings/personalvibration/PersonalVibration;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->mFromContact:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "editable"

    .prologue
    .line 401
    const/4 v0, 0x0

    .line 402
    .local v0, length:I
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 403
    const-string v1, "PersonalVibration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "afterTextChanged(), stage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;->Pause:Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v1, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->backView:Lcom/android/sec_settings/personalvibration/BackgroundView;

    invoke-virtual {v1}, Lcom/android/sec_settings/personalvibration/BackgroundView;->getStage()Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;->Pause:Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->backView:Lcom/android/sec_settings/personalvibration/BackgroundView;

    invoke-virtual {v1}, Lcom/android/sec_settings/personalvibration/BackgroundView;->getStage()Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;->Standby:Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;

    if-ne v1, v2, :cond_1

    .line 405
    :cond_0
    if-gtz v0, :cond_2

    .line 407
    const-string v1, "PersonalVibration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ok btn is disabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v1, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->mOkBtn:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 413
    :cond_1
    :goto_0
    return-void

    .line 410
    :cond_2
    iget-object v1, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->mOkBtn:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 419
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "v"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 240
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->backView:Lcom/android/sec_settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/sec_settings/personalvibration/BackgroundView;->getStage()Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;->Pause:Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_2

    .line 241
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->backView:Lcom/android/sec_settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/sec_settings/personalvibration/BackgroundView;->getPatternString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/sec_settings/personalvibration/PersonalVibration;->StringToLongArray(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->patternLong:[J

    .line 242
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->patternLong:[J

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->vib:Landroid/os/SystemVibrator;

    iget-object v1, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->patternLong:[J

    const/4 v2, -0x1

    sget-object v3, Landroid/os/SystemVibrator$MagnitudeType;->CallMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/SystemVibrator;->vibrate([JILandroid/os/SystemVibrator$MagnitudeType;)V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->backView:Lcom/android/sec_settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/sec_settings/personalvibration/BackgroundView;->setRunPlayTimer()V

    .line 245
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/sec_settings/personalvibration/PersonalVibration;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020368

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 247
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/sec_settings/personalvibration/PersonalVibration;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09061e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->rightButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 250
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->leftButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 375
    :cond_1
    :goto_0
    return-void

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->backView:Lcom/android/sec_settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/sec_settings/personalvibration/BackgroundView;->getStage()Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_1

    .line 255
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->rightButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 256
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->leftButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 258
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->backView:Lcom/android/sec_settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/sec_settings/personalvibration/BackgroundView;->setPauseTimer()V

    .line 259
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->cancel()V

    goto :goto_0

    .line 261
    :cond_3
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->stopButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 262
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->backView:Lcom/android/sec_settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/sec_settings/personalvibration/BackgroundView;->getStage()Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_1

    .line 263
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->backView:Lcom/android/sec_settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/sec_settings/personalvibration/BackgroundView;->setPauseTimer()V

    goto :goto_0

    .line 267
    :cond_4
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->leftButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_9

    .line 269
    const-string v0, "PersonalVibration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "leftButton is clicked, backView state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->backView:Lcom/android/sec_settings/personalvibration/BackgroundView;

    invoke-virtual {v2}, Lcom/android/sec_settings/personalvibration/BackgroundView;->getStage()Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->backView:Lcom/android/sec_settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/sec_settings/personalvibration/BackgroundView;->getStage()Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;->Pause:Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_8

    .line 271
    const/4 v7, 0x0

    .line 272
    .local v7, count:I
    const/16 v11, 0x1a

    .line 274
    .local v11, maxLength:I
    const-string v0, "PersonalVibration"

    const-string v1, "Save button was clicked"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {p0}, Lcom/android/sec_settings/personalvibration/PersonalVibration;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 278
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_7

    .line 279
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 280
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 282
    :cond_5
    const-string v0, "vibration_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 283
    .local v10, lastSavedName:Ljava/lang/String;
    const-string v0, "PersonalVibration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastSavedName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    if-eqz v10, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/sec_settings/personalvibration/PersonalVibration;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090188

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [0-9]+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 286
    const-string v0, " "

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 288
    .local v12, strsplit:[Ljava/lang/String;
    array-length v0, v12

    const/4 v1, 0x1

    if-le v0, v1, :cond_6

    .line 290
    const/4 v0, 0x1

    aget-object v0, v12, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 291
    .local v8, currentIndex:I
    add-int/lit8 v0, v8, 0x5

    add-int/lit8 v7, v0, 0x1

    .line 292
    const-string v0, "PersonalVibration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .end local v8           #currentIndex:I
    .end local v12           #strsplit:[Ljava/lang/String;
    :cond_6
    const-string v0, "PersonalVibration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "db count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .end local v10           #lastSavedName:Ljava/lang/String;
    :cond_7
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/personalvibration/PersonalVibration;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodManager;

    .line 302
    .local v9, imm:Landroid/view/inputmethod/InputMethodManager;
    const v0, 0x7f04009b

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 303
    .local v13, view:Landroid/view/View;
    const v0, 0x7f0b018a

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    .line 304
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    const v1, 0x7f090b99

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, v7, -0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/sec_settings/personalvibration/PersonalVibration;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 306
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, v11}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 307
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 309
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090b95

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/sec_settings/personalvibration/PersonalVibration$2;

    invoke-direct {v2, p0, v9}, Lcom/android/sec_settings/personalvibration/PersonalVibration$2;-><init>(Lcom/android/sec_settings/personalvibration/PersonalVibration;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0908e1

    new-instance v2, Lcom/android/sec_settings/personalvibration/PersonalVibration$1;

    invoke-direct {v2, p0, v9}, Lcom/android/sec_settings/personalvibration/PersonalVibration$1;-><init>(Lcom/android/sec_settings/personalvibration/PersonalVibration;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    .line 361
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 362
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 364
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->mOkBtn:Landroid/widget/Button;

    .line 365
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 367
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #count:I
    .end local v9           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v11           #maxLength:I
    .end local v13           #view:Landroid/view/View;
    :cond_8
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->backView:Lcom/android/sec_settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/sec_settings/personalvibration/BackgroundView;->getStage()Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_1

    .line 368
    const v0, 0x7f090b94

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 371
    :cond_9
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->rightButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 372
    invoke-virtual {p0}, Lcom/android/sec_settings/personalvibration/PersonalVibration;->stopRecording()V

    .line 373
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->cancel()V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 101
    const-string v0, "PersonalVibration"

    const-string v1, "onConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->backView:Lcom/android/sec_settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/sec_settings/personalvibration/BackgroundView;->getStage()Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/android/sec_settings/personalvibration/PersonalVibration;->stopRecording()V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->backView:Lcom/android/sec_settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/sec_settings/personalvibration/BackgroundView;->getStage()Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_1

    .line 105
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->backView:Lcom/android/sec_settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/sec_settings/personalvibration/BackgroundView;->setPauseTimer()V

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->vib:Landroid/os/SystemVibrator;

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->cancel()V

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 110
    const-string v0, "PersonalVibration"

    const-string v1, "save dialog is displayed so calling addTextChangedListener()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 114
    :cond_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 115
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const-string v1, "PersonalVibration"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const v1, 0x7f0400a2

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/personalvibration/PersonalVibration;->setContentView(I)V

    .line 67
    const v1, 0x7f0b000c

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/personalvibration/PersonalVibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->centerText:Landroid/widget/TextView;

    .line 69
    const v1, 0x7f0b01c4

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/personalvibration/PersonalVibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/sec_settings/personalvibration/BackgroundView;

    iput-object v1, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->backView:Lcom/android/sec_settings/personalvibration/BackgroundView;

    .line 70
    iget-object v1, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->backView:Lcom/android/sec_settings/personalvibration/BackgroundView;

    invoke-virtual {v1, p0}, Lcom/android/sec_settings/personalvibration/BackgroundView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 72
    const v1, 0x7f0b0170

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/personalvibration/PersonalVibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->buttonLayout:Landroid/widget/LinearLayout;

    .line 73
    const v1, 0x7f0b01c5

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/personalvibration/PersonalVibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->stopButtonLayout:Landroid/widget/LinearLayout;

    .line 74
    const v1, 0x7f0b000a

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/personalvibration/PersonalVibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    .line 75
    const v1, 0x7f0b01c8

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/personalvibration/PersonalVibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->leftButton:Landroid/widget/Button;

    .line 76
    const v1, 0x7f0b01c7

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/personalvibration/PersonalVibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->rightButton:Landroid/widget/Button;

    .line 77
    const v1, 0x7f0b01c6

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/personalvibration/PersonalVibration;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->stopButton:Landroid/widget/Button;

    .line 78
    iget-object v1, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v1, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->leftButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v1, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->rightButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v1, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->stopButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v1, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->stopButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 84
    new-instance v1, Lcom/android/sec_settings/personalvibration/PersonalVibration$BackgroundViewHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/sec_settings/personalvibration/PersonalVibration$BackgroundViewHandler;-><init>(Lcom/android/sec_settings/personalvibration/PersonalVibration;Lcom/android/sec_settings/personalvibration/PersonalVibration$1;)V

    iput-object v1, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->mHandler:Landroid/os/Handler;

    .line 85
    iget-object v1, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->backView:Lcom/android/sec_settings/personalvibration/BackgroundView;

    iget-object v2, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/sec_settings/personalvibration/BackgroundView;->setHandler(Landroid/os/Handler;)V

    .line 86
    new-instance v1, Landroid/os/SystemVibrator;

    invoke-direct {v1}, Landroid/os/SystemVibrator;-><init>()V

    iput-object v1, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->vib:Landroid/os/SystemVibrator;

    .line 88
    invoke-static {p0}, Lcom/android/sec_settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/personalvibration/PersonalVibration;->setRequestedOrientation(I)V

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/android/sec_settings/personalvibration/PersonalVibration;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 93
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.pattern.FROM_CONTACT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->mFromContact:Ljava/lang/Boolean;

    .line 95
    const-string v1, "PersonalVibration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFromContact : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->mFromContact:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    .line 152
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 153
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->backView:Lcom/android/sec_settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/sec_settings/personalvibration/BackgroundView;->getStage()Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_1

    .line 121
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->backView:Lcom/android/sec_settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/sec_settings/personalvibration/BackgroundView;->setPauseTimer()V

    .line 122
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->cancel()V

    .line 128
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 129
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->backView:Lcom/android/sec_settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/sec_settings/personalvibration/BackgroundView;->getStage()Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/android/sec_settings/personalvibration/PersonalVibration;->stopRecording()V

    .line 125
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->cancel()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 133
    iget-object v1, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->backView:Lcom/android/sec_settings/personalvibration/BackgroundView;

    invoke-virtual {v1}, Lcom/android/sec_settings/personalvibration/BackgroundView;->getStage()Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;

    if-ne v1, v2, :cond_0

    .line 134
    const-string v1, "PersonalVibration"

    const-string v2, "onResume() : stage is recording so stop recording"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p0}, Lcom/android/sec_settings/personalvibration/PersonalVibration;->stopRecording()V

    .line 136
    iget-object v1, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v1}, Landroid/os/SystemVibrator;->cancel()V

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 139
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/personalvibration/PersonalVibration;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 140
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 143
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 144
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 424
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 158
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 159
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 172
    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    .line 161
    :pswitch_0
    iget-object v2, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->backView:Lcom/android/sec_settings/personalvibration/BackgroundView;

    invoke-virtual {v2}, Lcom/android/sec_settings/personalvibration/BackgroundView;->isTimerRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    :pswitch_1
    iget-object v2, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->backView:Lcom/android/sec_settings/personalvibration/BackgroundView;

    invoke-virtual {v2}, Lcom/android/sec_settings/personalvibration/BackgroundView;->isTimerRunning()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->backView:Lcom/android/sec_settings/personalvibration/BackgroundView;

    invoke-virtual {v2}, Lcom/android/sec_settings/personalvibration/BackgroundView;->getStage()Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;

    move-result-object v2

    sget-object v3, Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;->Standby:Lcom/android/sec_settings/personalvibration/BackgroundView$Stage;

    if-ne v2, v3, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/android/sec_settings/personalvibration/PersonalVibration;->runRecording()V

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method runRecording()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 176
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->backView:Lcom/android/sec_settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/sec_settings/personalvibration/BackgroundView;->setRunRecordingTimer()V

    .line 177
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->centerText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->stopButtonLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->stopButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->patternLong:[J

    .line 183
    return-void
.end method

.method stopRecording()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 186
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->backView:Lcom/android/sec_settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/sec_settings/personalvibration/BackgroundView;->setStopTimer()V

    .line 187
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->centerText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->stopButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/android/sec_settings/personalvibration/PersonalVibration;->stopButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 192
    return-void
.end method
