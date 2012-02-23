.class public Landroid/view/BrightnessPanel;
.super Ljava/lang/Object;
.source "BrightnessPanel.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final MAXIMUM_BACKLIGHT:I = 0xff

.field private static final MINIMUM_BACKLIGHT:I = 0x1e

.field private static final MSG_BRIGHTNESS_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BrightnessPanel"

.field private static final bright_index:[I


# instance fields
.field private handler:Landroid/os/Handler;

.field private final mBrightIcon:Landroid/widget/ImageView;

.field protected mContext:Landroid/content/Context;

.field private final mLevel:Landroid/widget/ProgressBar;

.field private final mMessage:Landroid/widget/TextView;

.field private final mToast:Landroid/widget/Toast;

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/view/BrightnessPanel;->bright_index:[I

    return-void

    :array_0
    .array-data 0x4
        0x1et 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0x82t 0x0t 0x0t 0x0t
        0x9bt 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0xcdt 0x0t 0x0t 0x0t
        0xe6t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v1, Landroid/view/BrightnessPanel$1;

    invoke-direct {v1, p0}, Landroid/view/BrightnessPanel$1;-><init>(Landroid/view/BrightnessPanel;)V

    iput-object v1, p0, Landroid/view/BrightnessPanel;->handler:Landroid/os/Handler;

    .line 38
    iput-object p1, p0, Landroid/view/BrightnessPanel;->mContext:Landroid/content/Context;

    .line 40
    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/view/BrightnessPanel;->mToast:Landroid/widget/Toast;

    .line 42
    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 44
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x109002c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/view/BrightnessPanel;->mView:Landroid/view/View;

    .line 45
    iget-object v1, p0, Landroid/view/BrightnessPanel;->mView:Landroid/view/View;

    const v2, 0x102026a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroid/view/BrightnessPanel;->mMessage:Landroid/widget/TextView;

    .line 46
    iget-object v1, p0, Landroid/view/BrightnessPanel;->mView:Landroid/view/View;

    const v2, 0x102026b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Landroid/view/BrightnessPanel;->mBrightIcon:Landroid/widget/ImageView;

    .line 47
    iget-object v1, p0, Landroid/view/BrightnessPanel;->mView:Landroid/view/View;

    const v2, 0x102026c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Landroid/view/BrightnessPanel;->mLevel:Landroid/widget/ProgressBar;

    .line 49
    return-void
.end method


# virtual methods
.method public getNextBrightValue(II)I
    .locals 8
    .parameter "value"
    .parameter "dirction"

    .prologue
    const/16 v7, 0xff

    const/16 v6, 0x1e

    .line 75
    const/4 v2, 0x0

    .line 76
    .local v2, mNewBrightness:I
    const/4 v1, 0x0

    .line 78
    .local v1, index:I
    if-le p1, v7, :cond_2

    const/16 p1, 0xff

    .line 81
    :cond_0
    :goto_0
    add-int/lit8 v3, p1, -0x1e

    div-int/lit8 v3, v3, 0x19

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 82
    const-string v3, "BrightnessPanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prgress Index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    packed-switch p2, :pswitch_data_0

    .line 101
    :cond_1
    :goto_1
    sget-object v3, Landroid/view/BrightnessPanel;->bright_index:[I

    aget v2, v3, v1

    .line 103
    return v2

    .line 79
    :cond_2
    if-ge p1, v6, :cond_0

    const/16 p1, 0x1e

    goto :goto_0

    .line 87
    :pswitch_0
    :try_start_0
    sget-object v3, Landroid/view/BrightnessPanel;->bright_index:[I

    aget v3, v3, v1

    if-ge v3, v7, :cond_1

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 92
    :pswitch_1
    sget-object v3, Landroid/view/BrightnessPanel;->bright_index:[I

    aget v3, v3, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-le v3, v6, :cond_1

    .line 93
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    move v2, p1

    goto :goto_1

    .line 85
    :pswitch_data_0
    .packed-switch 0xd4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBrightChanged(I)V
    .locals 3
    .parameter "brightness"

    .prologue
    const/4 v2, 0x1

    .line 51
    iget-object v0, p0, Landroid/view/BrightnessPanel;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Landroid/view/BrightnessPanel;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method protected onShowBrightChanged(I)V
    .locals 5
    .parameter "mNewBrightness"

    .prologue
    const/16 v4, 0xe1

    const/4 v3, 0x0

    .line 56
    const-string v0, "BrightnessPanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onShowBrightChanged() Brightness : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Landroid/view/BrightnessPanel;->mBrightIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Landroid/view/BrightnessPanel;->mMessage:Landroid/widget/TextView;

    const v1, 0x10405b5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 61
    iget-object v0, p0, Landroid/view/BrightnessPanel;->mLevel:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    if-eq v4, v0, :cond_0

    .line 62
    iget-object v0, p0, Landroid/view/BrightnessPanel;->mLevel:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 65
    :cond_0
    iget-object v0, p0, Landroid/view/BrightnessPanel;->mLevel:Landroid/widget/ProgressBar;

    add-int/lit8 v1, p1, -0x1e

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 67
    iget-object v0, p0, Landroid/view/BrightnessPanel;->mToast:Landroid/widget/Toast;

    iget-object v1, p0, Landroid/view/BrightnessPanel;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 68
    iget-object v0, p0, Landroid/view/BrightnessPanel;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v3}, Landroid/widget/Toast;->setDuration(I)V

    .line 69
    iget-object v0, p0, Landroid/view/BrightnessPanel;->mToast:Landroid/widget/Toast;

    const/16 v1, 0x30

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 70
    iget-object v0, p0, Landroid/view/BrightnessPanel;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 72
    return-void
.end method
