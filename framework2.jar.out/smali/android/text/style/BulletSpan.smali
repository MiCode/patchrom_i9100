.class public Landroid/text/style/BulletSpan;
.super Ljava/lang/Object;
.source "BulletSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;
.implements Landroid/text/ParcelableSpan;


# static fields
.field private static final BULLET_RADIUS:I = 0x3

.field public static final STANDARD_GAP_WIDTH:I = 0x2

.field private static sBulletPath:Landroid/graphics/Path;


# instance fields
.field private final mColor:I

.field private final mGapWidth:I

.field private final mWantColor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Landroid/text/style/BulletSpan;->sBulletPath:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x2

    iput v0, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    .line 40
    iput-boolean v1, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    .line 41
    iput v1, p0, Landroid/text/style/BulletSpan;->mColor:I

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "gapWidth"

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    .line 46
    iput-boolean v0, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    .line 47
    iput v0, p0, Landroid/text/style/BulletSpan;->mColor:I

    .line 48
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "gapWidth"
    .parameter "color"

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    .line 53
    iput p2, p0, Landroid/text/style/BulletSpan;->mColor:I

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/BulletSpan;->mColor:I

    .line 60
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 8
    .parameter "c"
    .parameter "p"
    .parameter "x"
    .parameter "dir"
    .parameter "top"
    .parameter "baseline"
    .parameter "bottom"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "first"
    .parameter "l"

    .prologue
    .line 84
    check-cast p8, Landroid/text/Spanned;

    .end local p8
    move-object/from16 v0, p8

    invoke-interface {v0, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    move/from16 v0, p9

    if-ne v3, v0, :cond_3

    .line 85
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v2

    .line 86
    .local v2, style:Landroid/graphics/Paint$Style;
    const/4 v1, 0x0

    .line 88
    .local v1, oldcolor:I
    iget-boolean v3, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    if-eqz v3, :cond_0

    .line 89
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    .line 90
    iget v3, p0, Landroid/text/style/BulletSpan;->mColor:I

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    :cond_0
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 96
    sget-object v3, Landroid/text/style/BulletSpan;->sBulletPath:Landroid/graphics/Path;

    if-nez v3, :cond_1

    .line 97
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    sput-object v3, Landroid/text/style/BulletSpan;->sBulletPath:Landroid/graphics/Path;

    .line 99
    sget-object v3, Landroid/text/style/BulletSpan;->sBulletPath:Landroid/graphics/Path;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x40666667

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 102
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 103
    mul-int/lit8 v3, p4, 0x3

    add-int/2addr v3, p3

    int-to-float v3, v3

    add-int v4, p5, p7

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 104
    sget-object v3, Landroid/text/style/BulletSpan;->sBulletPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 105
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 110
    :goto_0
    iget-boolean v3, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    if-eqz v3, :cond_2

    .line 111
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    :cond_2
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 116
    .end local v1           #oldcolor:I
    .end local v2           #style:Landroid/graphics/Paint$Style;
    :cond_3
    return-void

    .line 107
    .restart local v1       #oldcolor:I
    .restart local v2       #style:Landroid/graphics/Paint$Style;
    :cond_4
    mul-int/lit8 v3, p4, 0x3

    add-int/2addr v3, p3

    int-to-float v3, v3

    add-int v4, p5, p7

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    const/high16 v5, 0x4040

    invoke-virtual {p1, v3, v4, v5, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getLeadingMargin(Z)I
    .locals 1
    .parameter "first"

    .prologue
    .line 77
    iget v0, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0x8

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 71
    iget v0, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-boolean v0, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget v0, p0, Landroid/text/style/BulletSpan;->mColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
