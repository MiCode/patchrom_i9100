.class public Lcom/sec/android/app/fm/SoftmuteTestActivity;
.super Landroid/app/Activity;
.source "SoftmuteTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field LOG_TAG:Ljava/lang/String;

.field private MAX_REG_COUNT:I

.field PropertyName:[Ljava/lang/String;

.field private mApplyButton:Landroid/widget/Button;

.field mDefaultSoftmute:[I

.field private mEditReg:[Landroid/widget/EditText;

.field mEditTextId:[I

.field private mLoadButton:Landroid/widget/Button;

.field private mTextLabel:[Landroid/widget/TextView;

.field mTextViewId:[I

.field registerName:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    const-string v0, "### SoftmuteTestActivity ###"

    iput-object v0, p0, Lcom/sec/android/app/fm/SoftmuteTestActivity;->LOG_TAG:Ljava/lang/String;

    .line 25
    iput v3, p0, Lcom/sec/android/app/fm/SoftmuteTestActivity;->MAX_REG_COUNT:I

    .line 26
    iget v0, p0, Lcom/sec/android/app/fm/SoftmuteTestActivity;->MAX_REG_COUNT:I

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/fm/SoftmuteTestActivity;->mTextLabel:[Landroid/widget/TextView;

    .line 27
    iget v0, p0, Lcom/sec/android/app/fm/SoftmuteTestActivity;->MAX_REG_COUNT:I

    new-array v0, v0, [Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/app/fm/SoftmuteTestActivity;->mEditReg:[Landroid/widget/EditText;

    .line 30
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "Start SNR (0~63)"

    aput-object v1, v0, v4

    const-string v1, "Stop SNR (0~63)"

    aput-object v1, v0, v5

    const-string v1, "Start RSSI (-128~127)"

    aput-object v1, v0, v6

    const-string v1, "Stop RSSI (-128~127)"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "Start MUTE (0~63) 255(Disable Softmute)"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Stop Atten(-128~127)"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Mute Rate (0~63)"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SNR40 (-128~127)"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/fm/SoftmuteTestActivity;->registerName:[Ljava/lang/String;

    .line 32
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/fm/SoftmuteTestActivity;->mTextViewId:[I

    .line 34
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sec/android/app/fm/SoftmuteTestActivity;->mEditTextId:[I

    .line 36
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "service.brcm.fm.start_snr"

    aput-object v1, v0, v4

    const-string v1, "service.brcm.fm.stop_snr"

    aput-object v1, v0, v5

    const-string v1, "service.brcm.fm.start_rssi"

    aput-object v1, v0, v6

    const-string v1, "service.brcm.fm.stop_rssi"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "service.brcm.fm.start_mute"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "service.brcm.fm.stop_atten"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "service.brcm.fm.mute_rate"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "service.brcm.fm.snr40"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/fm/SoftmuteTestActivity;->PropertyName:[Ljava/lang/String;

    .line 38
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/sec/android/app/fm/SoftmuteTestActivity;->mDefaultSoftmute:[I

    return-void

    .line 32
    nop

    :array_0
    .array-data 0x4
        0xb6t 0x0t 0x7t 0x7ft
        0xb8t 0x0t 0x7t 0x7ft
        0xbat 0x0t 0x7t 0x7ft
        0xbct 0x0t 0x7t 0x7ft
        0xbet 0x0t 0x7t 0x7ft
        0xc0t 0x0t 0x7t 0x7ft
        0xc2t 0x0t 0x7t 0x7ft
        0xc4t 0x0t 0x7t 0x7ft
    .end array-data

    .line 34
    :array_1
    .array-data 0x4
        0xb7t 0x0t 0x7t 0x7ft
        0xb9t 0x0t 0x7t 0x7ft
        0xbbt 0x0t 0x7t 0x7ft
        0xbdt 0x0t 0x7t 0x7ft
        0xbft 0x0t 0x7t 0x7ft
        0xc1t 0x0t 0x7t 0x7ft
        0xc3t 0x0t 0x7t 0x7ft
        0xc5t 0x0t 0x7t 0x7ft
    .end array-data

    .line 38
    :array_2
    .array-data 0x4
        0x29t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private applySoftmute()V
    .locals 6

    .prologue
    .line 89
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/sec/android/app/fm/SoftmuteTestActivity;->MAX_REG_COUNT:I

    if-ge v1, v3, :cond_1

    .line 91
    iget-object v3, p0, Lcom/sec/android/app/fm/SoftmuteTestActivity;->mEditReg:[Landroid/widget/EditText;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, ret:Ljava/lang/String;
    const-string v3, "N/A"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :cond_0
    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 95
    .local v0, Value:I
    iget-object v3, p0, Lcom/sec/android/app/fm/SoftmuteTestActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applySoftmute: value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v3, p0, Lcom/sec/android/app/fm/SoftmuteTestActivity;->PropertyName:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-direct {p0, v3, v0}, Lcom/sec/android/app/fm/SoftmuteTestActivity;->setPropertySoftmute(Ljava/lang/String;I)V

    goto :goto_1

    .line 99
    .end local v0           #Value:I
    .end local v2           #ret:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private initialize()V
    .locals 3

    .prologue
    .line 45
    const v1, 0x7f0700c6

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/SoftmuteTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/fm/SoftmuteTestActivity;->mApplyButton:Landroid/widget/Button;

    .line 46
    iget-object v1, p0, Lcom/sec/android/app/fm/SoftmuteTestActivity;->mApplyButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v1, p0, Lcom/sec/android/app/fm/SoftmuteTestActivity;->mApplyButton:Landroid/widget/Button;

    const-string v2, "Apply"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 50
    const v1, 0x7f0700c7

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/SoftmuteTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/fm/SoftmuteTestActivity;->mLoadButton:Landroid/widget/Button;

    .line 51
    iget-object v1, p0, Lcom/sec/android/app/fm/SoftmuteTestActivity;->mLoadButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v1, p0, Lcom/sec/android/app/fm/SoftmuteTestActivity;->mLoadButton:Landroid/widget/Button;

    const-string v2, "Load default"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 55
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/sec/android/app/fm/SoftmuteTestActivity;->MAX_REG_COUNT:I

    if-ge v0, v1, :cond_0

    .line 57
    iget-object v2, p0, Lcom/sec/android/app/fm/SoftmuteTestActivity;->mTextLabel:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/fm/SoftmuteTestActivity;->mTextViewId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/SoftmuteTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v2, v0

    .line 58
    iget-object v1, p0, Lcom/sec/android/app/fm/SoftmuteTestActivity;->mTextLabel:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/sec/android/app/fm/SoftmuteTestActivity;->registerName:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v2, p0, Lcom/sec/android/app/fm/SoftmuteTestActivity;->mEditReg:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/app/fm/SoftmuteTestActivity;->mEditTextId:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/fm/SoftmuteTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    aput-object v1, v2, v0

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method private loadSoftmute()V
    .locals 4

    .prologue
    .line 80
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/sec/android/app/fm/SoftmuteTestActivity;->MAX_REG_COUNT:I

    if-ge v0, v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/sec/android/app/fm/SoftmuteTestActivity;->mDefaultSoftmute:[I

    aget v1, v1, v0

    const/16 v2, 0xff

    if-ne v1, v2, :cond_0

    .line 80
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/fm/SoftmuteTestActivity;->mEditReg:[Landroid/widget/EditText;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/sec/android/app/fm/SoftmuteTestActivity;->mDefaultSoftmute:[I

    aget v2, v2, v0

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 85
    :cond_1
    return-void
.end method

.method private setPropertySoftmute(Ljava/lang/String;I)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.fm.set_property"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, i:Landroid/content/Intent;
    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/SoftmuteTestActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 76
    return-void
.end method

.method private uiclear()V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/sec/android/app/fm/SoftmuteTestActivity;->MAX_REG_COUNT:I

    if-ge v0, v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/sec/android/app/fm/SoftmuteTestActivity;->mEditReg:[Landroid/widget/EditText;

    aget-object v1, v1, v0

    const-string v2, "N/A"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 117
    :goto_0
    return-void

    .line 105
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/fm/SoftmuteTestActivity;->applySoftmute()V

    .line 107
    const-string v0, "Apply Complete except N/A~!!"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 110
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/fm/SoftmuteTestActivity;->loadSoftmute()V

    .line 112
    const-string v0, "Load default value~!!"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x7f0700c6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/SoftmuteTestActivity;->setContentView(I)V

    .line 125
    invoke-direct {p0}, Lcom/sec/android/app/fm/SoftmuteTestActivity;->initialize()V

    .line 127
    invoke-direct {p0}, Lcom/sec/android/app/fm/SoftmuteTestActivity;->uiclear()V

    .line 128
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 133
    return-void
.end method
