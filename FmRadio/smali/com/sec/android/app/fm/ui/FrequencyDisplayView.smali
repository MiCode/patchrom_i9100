.class public Lcom/sec/android/app/fm/ui/FrequencyDisplayView;
.super Landroid/widget/LinearLayout;
.source "FrequencyDisplayView.java"


# instance fields
.field private m1stDigit:Landroid/widget/ImageView;

.field private m2ndDigit:Landroid/widget/ImageView;

.field private m3rdDigit:Landroid/widget/ImageView;

.field private mDot1stDigit:Landroid/widget/ImageView;

.field private mDot2ndDigit:Landroid/widget/ImageView;

.field private mDotDigit:Landroid/widget/ImageView;

.field private mMhzDigit:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->initFreqView()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->initFreqView()V

    .line 29
    return-void
.end method

.method private setFreqImageResource(ILandroid/widget/ImageView;)V
    .locals 1
    .parameter "number"
    .parameter "imgView"

    .prologue
    .line 94
    packed-switch p1, :pswitch_data_0

    .line 128
    :goto_0
    return-void

    .line 96
    :pswitch_0
    const v0, 0x7f02005f

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 99
    :pswitch_1
    const v0, 0x7f020060

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 102
    :pswitch_2
    const v0, 0x7f020061

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 105
    :pswitch_3
    const v0, 0x7f020062

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 108
    :pswitch_4
    const v0, 0x7f020063

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 111
    :pswitch_5
    const v0, 0x7f020064

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 114
    :pswitch_6
    const v0, 0x7f020065

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 117
    :pswitch_7
    const v0, 0x7f020066

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 120
    :pswitch_8
    const v0, 0x7f020067

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 123
    :pswitch_9
    const v0, 0x7f020068

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public initFreqView()V
    .locals 1

    .prologue
    .line 32
    const v0, 0x7f07004c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->m1stDigit:Landroid/widget/ImageView;

    .line 33
    const v0, 0x7f07004d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->m2ndDigit:Landroid/widget/ImageView;

    .line 34
    const v0, 0x7f07004e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->m3rdDigit:Landroid/widget/ImageView;

    .line 35
    const v0, 0x7f07004f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->mDotDigit:Landroid/widget/ImageView;

    .line 36
    const v0, 0x7f070050

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->mDot1stDigit:Landroid/widget/ImageView;

    .line 38
    const v0, 0x7f070051

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->mDot2ndDigit:Landroid/widget/ImageView;

    .line 40
    const v0, 0x7f070052

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->mMhzDigit:Landroid/widget/ImageView;

    .line 41
    return-void
.end method

.method public setFreqVisibility()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    sget-boolean v0, Lcom/sec/android/app/fm/MainActivity;->IS_BIGGER_THAN_MDPI:Z

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->m1stDigit:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->m2ndDigit:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->m3rdDigit:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->mDotDigit:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->mDot1stDigit:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->mDot2ndDigit:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 60
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->mMhzDigit:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 62
    :cond_0
    return-void
.end method

.method public setFrequency(J)V
    .locals 9
    .parameter "frequency"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 65
    sget-object v1, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FMRADIO #######Frequency:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Channel space : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/fm/FMRadioFeature;->GetFrequencySpace()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/app/fm/MainActivity;->log(Ljava/lang/String;Z)V

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 68
    .local v0, arry:[C
    invoke-static {}, Lcom/sec/android/app/fm/FMRadioFeature;->GetFrequencySpace()I

    move-result v1

    const/16 v2, 0x32

    if-ne v1, v2, :cond_0

    .line 70
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->mDot2ndDigit:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    :cond_0
    array-length v1, v0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-char v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->m1stDigit:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->setFreqImageResource(ILandroid/widget/ImageView;)V

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-char v2, v0, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->m2ndDigit:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->setFreqImageResource(ILandroid/widget/ImageView;)V

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-char v2, v0, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->m3rdDigit:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->setFreqImageResource(ILandroid/widget/ImageView;)V

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-char v2, v0, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->mDot1stDigit:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->setFreqImageResource(ILandroid/widget/ImageView;)V

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-char v2, v0, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->mDot2ndDigit:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->setFreqImageResource(ILandroid/widget/ImageView;)V

    .line 88
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->mDotDigit:Landroid/widget/ImageView;

    const v2, 0x7f02006a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->mMhzDigit:Landroid/widget/ImageView;

    const v2, 0x7f02006c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    return-void

    .line 80
    :cond_2
    array-length v1, v0

    if-ne v1, v8, :cond_1

    .line 81
    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->m1stDigit:Landroid/widget/ImageView;

    const v2, 0x7f020069

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-char v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->m2ndDigit:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->setFreqImageResource(ILandroid/widget/ImageView;)V

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-char v2, v0, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->m3rdDigit:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->setFreqImageResource(ILandroid/widget/ImageView;)V

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-char v2, v0, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->mDot1stDigit:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->setFreqImageResource(ILandroid/widget/ImageView;)V

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-char v2, v0, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->mDot2ndDigit:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/fm/ui/FrequencyDisplayView;->setFreqImageResource(ILandroid/widget/ImageView;)V

    goto/16 :goto_0
.end method
