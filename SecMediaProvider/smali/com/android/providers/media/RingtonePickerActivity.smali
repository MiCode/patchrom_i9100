.class public final Lcom/android/providers/media/RingtonePickerActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "RingtonePickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;
.implements Ljava/lang/Runnable;


# instance fields
.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mClickedPos:I

.field private mCursor:Landroid/database/Cursor;

.field private mDefaultRingtone:Landroid/media/Ringtone;

.field private mDefaultRingtonePos:I

.field private mExistingUri:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field private mHasDefaultItem:Z

.field private mHasSilentItem:Z

.field private mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mRingtoneManager:Landroid/media/RingtoneManager;

.field private mSampleRingtonePos:I

.field private mSilentPos:I

.field private mStaticItemCount:I

.field private mUriForDefaultItem:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 55
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 72
    iput v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSilentPos:I

    .line 75
    iput v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtonePos:I

    .line 78
    iput v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    .line 81
    iput v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSampleRingtonePos:I

    .line 105
    new-instance v0, Lcom/android/providers/media/RingtonePickerActivity$1;

    invoke-direct {v0, p0}, Lcom/android/providers/media/RingtonePickerActivity$1;-><init>(Lcom/android/providers/media/RingtonePickerActivity;)V

    iput-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 329
    new-instance v0, Lcom/android/providers/media/RingtonePickerActivity$3;

    invoke-direct {v0, p0}, Lcom/android/providers/media/RingtonePickerActivity$3;-><init>(Lcom/android/providers/media/RingtonePickerActivity;)V

    iput-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/providers/media/RingtonePickerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/providers/media/RingtonePickerActivity;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/providers/media/RingtonePickerActivity;->playRingtone(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/providers/media/RingtonePickerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/providers/media/RingtonePickerActivity;->stopAnyPlayingRingtone()V

    return-void
.end method

.method private addDefaultRingtoneItem(Landroid/widget/ListView;)I
    .locals 1
    .parameter "listView"

    .prologue
    .line 266
    const v0, 0x1040503

    invoke-direct {p0, p1, v0}, Lcom/android/providers/media/RingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    return v0
.end method

.method private addSilentItem(Landroid/widget/ListView;)I
    .locals 1
    .parameter "listView"

    .prologue
    .line 270
    const v0, 0x1040505

    invoke-direct {p0, p1, v0}, Lcom/android/providers/media/RingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    return v0
.end method

.method private addStaticItem(Landroid/widget/ListView;I)I
    .locals 6
    .parameter "listView"
    .parameter "textResId"

    .prologue
    const/4 v5, 0x0

    .line 247
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 249
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10103fd

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 250
    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x1090131

    invoke-virtual {v2, v3, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 258
    .local v1, textView:Landroid/widget/TextView;
    :goto_0
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 259
    invoke-virtual {p1, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 260
    invoke-virtual {p1, v5}, Landroid/widget/ListView;->setSoundEffectsEnabled(Z)V

    .line 261
    iget v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mStaticItemCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mStaticItemCount:I

    .line 262
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    return v2

    .line 255
    .end local v1           #textView:Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x10900e5

    invoke-virtual {v2, v3, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .restart local v1       #textView:Landroid/widget/TextView;
    goto :goto_0
.end method

.method private getListPosition(I)I
    .locals 1
    .parameter "ringtoneManagerPos"

    .prologue
    .line 451
    if-gez p1, :cond_0

    .line 453
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    iget v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mStaticItemCount:I

    add-int/2addr p1, v0

    goto :goto_0
.end method

.method private getRingtoneManagerPosition(I)I
    .locals 1
    .parameter "listPos"

    .prologue
    .line 445
    iget v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mStaticItemCount:I

    sub-int v0, p1, v0

    return v0
.end method

.method private playRingtone(II)V
    .locals 3
    .parameter "position"
    .parameter "delayMs"

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/android/providers/media/RingtonePickerActivity;->requestAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 350
    iput p1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSampleRingtonePos:I

    .line 351
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 357
    :goto_0
    return-void

    .line 354
    :cond_0
    const-string v0, "RingtonePickerActivity"

    const-string v1, "fail to request Audio Focus"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private requestAudioFocus()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 457
    const-string v2, "RingtonePickerActivity"

    const-string v3, "requestAudioFocus()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/4 v0, 0x0

    .line 459
    .local v0, focusResult:I
    iget-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 462
    if-nez v0, :cond_0

    .line 463
    const-string v1, "RingtonePickerActivity"

    const-string v2, "requestAudioFocus is failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const/4 v1, 0x0

    .line 467
    :cond_0
    return v1
.end method

.method private stopAnyPlayingRingtone()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 442
    :cond_1
    return-void
.end method


# virtual methods
.method public getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 9
    .parameter "path"

    .prologue
    const/4 v4, 0x0

    .line 486
    const-string v8, "content://media/internal/audio/media"

    .line 487
    .local v8, uriString:Ljava/lang/String;
    const/4 v1, 0x0

    .line 488
    .local v1, uri:Landroid/net/Uri;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 490
    const-string v0, "RingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "windstar The path is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const-string v0, "RingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "windstar The uri is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    if-eqz v1, :cond_1

    .line 494
    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data= \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 498
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 499
    const-string v0, "RingtonePickerActivity"

    const-string v2, " The path is exist in the DB"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 501
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 502
    .local v7, j:I
    const-string v0, "RingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The id is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 506
    const-string v0, "RingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The uri is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 512
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #j:I
    :goto_0
    return-object v0

    .line 509
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 511
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    const-string v0, "RingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "windstar not Found The uri is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const-string v0, ""

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 277
    if-ne p2, v6, :cond_0

    move v0, v3

    .line 280
    .local v0, positiveResult:Z
    :goto_0
    iget-object v5, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v5}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 282
    if-eqz v0, :cond_3

    .line 283
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 284
    .local v1, resultIntent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 286
    .local v2, uri:Landroid/net/Uri;
    iget v3, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    iget v4, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtonePos:I

    if-ne v3, v4, :cond_1

    .line 288
    iget-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 296
    :goto_1
    const-string v3, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 302
    invoke-virtual {p0, v6, v1}, Lcom/android/providers/media/RingtonePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 310
    .end local v1           #resultIntent:Landroid/content/Intent;
    .end local v2           #uri:Landroid/net/Uri;
    :goto_2
    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/android/providers/media/RingtonePickerActivity$2;

    invoke-direct {v4, p0}, Lcom/android/providers/media/RingtonePickerActivity$2;-><init>(Lcom/android/providers/media/RingtonePickerActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 316
    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->finish()V

    .line 317
    return-void

    .end local v0           #positiveResult:Z
    :cond_0
    move v0, v4

    .line 277
    goto :goto_0

    .line 289
    .restart local v0       #positiveResult:Z
    .restart local v1       #resultIntent:Landroid/content/Intent;
    .restart local v2       #uri:Landroid/net/Uri;
    :cond_1
    iget v3, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    iget v4, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSilentPos:I

    if-ne v3, v4, :cond_2

    .line 291
    const/4 v2, 0x0

    goto :goto_1

    .line 293
    :cond_2
    iget-object v3, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v4, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    invoke-direct {p0, v4}, Lcom/android/providers/media/RingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    .line 304
    .end local v1           #resultIntent:Landroid/content/Intent;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_3
    const/4 v5, -0x3

    if-ne p2, v5, :cond_4

    .line 305
    invoke-virtual {p0, v3}, Lcom/android/providers/media/RingtonePickerActivity;->setResult(I)V

    goto :goto_2

    .line 307
    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/providers/media/RingtonePickerActivity;->setResult(I)V

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 123
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/providers/media/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    .line 127
    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 133
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/providers/media/RingtonePickerActivity;->mHasDefaultItem:Z

    .line 134
    const-string v4, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/providers/media/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 135
    iget-object v4, p0, Lcom/android/providers/media/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v4, :cond_0

    .line 136
    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/providers/media/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 139
    :cond_0
    if-eqz p1, :cond_1

    .line 140
    const-string v4, "clicked_pos"

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    .line 143
    :cond_1
    const-string v4, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/providers/media/RingtonePickerActivity;->mHasSilentItem:Z

    .line 146
    new-instance v4, Landroid/media/RingtoneManager;

    invoke-direct {v4, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    .line 147
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/android/providers/media/RingtonePickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 149
    const-string v4, "android.intent.extra.ringtone.INCLUDE_DRM"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 151
    .local v0, includeDrm:Z
    iget-object v4, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4, v0}, Landroid/media/RingtoneManager;->setIncludeDrm(Z)V

    .line 154
    const-string v4, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 155
    .local v3, types:I
    if-eq v3, v6, :cond_2

    .line 156
    iget-object v4, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4, v3}, Landroid/media/RingtoneManager;->setType(I)V

    .line 159
    :cond_2
    iget-object v4, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/providers/media/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    .line 162
    iget-object v4, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/providers/media/RingtonePickerActivity;->setVolumeControlStream(I)V

    .line 165
    const-string v4, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/providers/media/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    .line 168
    iget-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 169
    .local v2, p:Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v4, p0, Lcom/android/providers/media/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 170
    iget-object v4, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 171
    const-string v4, "title"

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 172
    iput-boolean v5, v2, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 173
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 174
    const v4, 0x104000a

    invoke-virtual {p0, v4}, Lcom/android/providers/media/RingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 175
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 176
    const/high16 v4, 0x104

    invoke-virtual {p0, v4}, Lcom/android/providers/media/RingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 177
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 178
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mOnPrepareListViewListener:Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;

    .line 180
    const-string v4, "neutral_button"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 181
    const-string v4, "neutral_button_text"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 182
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 185
    :cond_3
    const-string v4, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 186
    iget-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-nez v4, :cond_4

    .line 187
    const v4, 0x1040506

    invoke-virtual {p0, v4}, Lcom/android/providers/media/RingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 190
    :cond_4
    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->setupAlert()V

    .line 191
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 421
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 422
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 423
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterAudioFocusListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 424
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 323
    const/16 v0, 0x12c

    invoke-direct {p0, p3, v0}, Lcom/android/providers/media/RingtonePickerActivity;->playRingtone(II)V

    .line 324
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 471
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 473
    .local v0, ret:Z
    const/16 v1, 0x13

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020019

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x102001a

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x102001b

    if-ne v1, v2, :cond_2

    .line 476
    :cond_0
    iget v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSampleRingtonePos:I

    const/16 v2, 0x12c

    invoke-direct {p0, v1, v2}, Lcom/android/providers/media/RingtonePickerActivity;->playRingtone(II)V

    .line 481
    :cond_1
    :goto_0
    return v0

    .line 477
    :cond_2
    const/16 v1, 0x14

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSampleRingtonePos:I

    iget-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v2}, Lcom/android/internal/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    .line 478
    invoke-direct {p0}, Lcom/android/providers/media/RingtonePickerActivity;->stopAnyPlayingRingtone()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 327
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 428
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 429
    invoke-direct {p0}, Lcom/android/providers/media/RingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 430
    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->finish()V

    .line 431
    return-void
.end method

.method public onPrepareListView(Landroid/widget/ListView;)V
    .locals 4
    .parameter "listView"

    .prologue
    const/4 v3, -0x1

    .line 201
    iget-boolean v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mHasDefaultItem:Z

    if-eqz v1, :cond_0

    .line 202
    invoke-direct {p0, p1}, Lcom/android/providers/media/RingtonePickerActivity;->addDefaultRingtoneItem(Landroid/widget/ListView;)I

    move-result v1

    iput v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtonePos:I

    .line 204
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    iget v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtonePos:I

    iput v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    .line 209
    :cond_0
    iget-boolean v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mHasSilentItem:Z

    if-eqz v1, :cond_1

    .line 210
    invoke-direct {p0, p1}, Lcom/android/providers/media/RingtonePickerActivity;->addSilentItem(Landroid/widget/ListView;)I

    move-result v1

    iput v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSilentPos:I

    .line 213
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-nez v1, :cond_1

    .line 214
    iget v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSilentPos:I

    iput v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    .line 218
    :cond_1
    iget v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    if-ne v1, v3, :cond_2

    .line 219
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/providers/media/RingtonePickerActivity;->getListPosition(I)I

    move-result v1

    iput v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    .line 223
    :cond_2
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-eqz v1, :cond_3

    .line 224
    iget v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    if-ne v1, v3, :cond_3

    .line 225
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/providers/media/RingtonePickerActivity;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 226
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1, v0}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/providers/media/RingtonePickerActivity;->getListPosition(I)I

    move-result v1

    iput v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    .line 227
    const-string v1, "RingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareListView : mClickedPos : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .end local v0           #uri:Landroid/net/Uri;
    :cond_3
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    iput v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    .line 235
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 195
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 196
    const-string v0, "clicked_pos"

    iget v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 413
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 414
    invoke-direct {p0}, Lcom/android/providers/media/RingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 417
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/android/providers/media/RingtonePickerActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    iget v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSampleRingtonePos:I

    iget v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSilentPos:I

    if-ne v1, v2, :cond_2

    .line 365
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 366
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    goto :goto_0

    .line 376
    :cond_2
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 377
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    .line 378
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 382
    :cond_3
    iget v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSampleRingtonePos:I

    iget v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtonePos:I

    if-ne v1, v2, :cond_5

    .line 383
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_4

    .line 384
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 389
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v1, :cond_4

    .line 390
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    iget-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v2}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 392
    :cond_4
    iget-object v0, p0, Lcom/android/providers/media/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 400
    .local v0, ringtone:Landroid/media/Ringtone;
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 406
    :goto_1
    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    goto :goto_0

    .line 403
    .end local v0           #ringtone:Landroid/media/Ringtone;
    :cond_5
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v2, p0, Lcom/android/providers/media/RingtonePickerActivity;->mSampleRingtonePos:I

    invoke-direct {p0, v2}, Lcom/android/providers/media/RingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(I)Landroid/media/Ringtone;

    move-result-object v0

    .restart local v0       #ringtone:Landroid/media/Ringtone;
    goto :goto_1
.end method
