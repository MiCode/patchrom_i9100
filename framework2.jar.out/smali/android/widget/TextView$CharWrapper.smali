.class Landroid/widget/TextView$CharWrapper;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;
.implements Landroid/text/GraphicsOperations;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharWrapper"
.end annotation


# instance fields
.field private mChars:[C

.field private mLength:I

.field private mStart:I


# direct methods
.method public constructor <init>([CII)V
    .locals 0
    .parameter "chars"
    .parameter "start"
    .parameter "len"

    .prologue
    .line 9001
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9002
    iput-object p1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    .line 9003
    iput p2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    .line 9004
    iput p3, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    .line 9005
    return-void
.end method

.method static synthetic access$102(Landroid/widget/TextView$CharWrapper;[C)[C
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8997
    iput-object p1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    return-object p1
.end method


# virtual methods
.method public charAt(I)C
    .locals 2
    .parameter "off"

    .prologue
    .line 9018
    iget-object v0, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v1, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    return v0
.end method

.method public drawText(Landroid/graphics/Canvas;IIFFLandroid/graphics/Paint;)V
    .locals 7
    .parameter "c"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "y"
    .parameter "p"

    .prologue
    .line 9044
    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int v2, p2, v0

    sub-int v3, p3, p2

    move-object v0, p1

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 9045
    return-void
.end method

.method public drawTextRun(Landroid/graphics/Canvas;IIIIFFILandroid/graphics/Paint;)V
    .locals 10
    .parameter "c"
    .parameter "start"
    .parameter "end"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "x"
    .parameter "y"
    .parameter "flags"
    .parameter "p"

    .prologue
    .line 9049
    sub-int v3, p3, p2

    .line 9050
    .local v3, count:I
    sub-int v5, p5, p4

    .line 9051
    .local v5, contextCount:I
    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int v2, p2, v0

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int v4, p4, v0

    move-object v0, p1

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFILandroid/graphics/Paint;)V

    .line 9053
    return-void
.end method

.method public getChars(II[CI)V
    .locals 3
    .parameter "start"
    .parameter "end"
    .parameter "buf"
    .parameter "off"

    .prologue
    .line 9035
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    if-gt p1, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    if-le p2, v0, :cond_1

    .line 9036
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9039
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v1, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9040
    return-void
.end method

.method public getTextRunAdvances(IIIII[FILandroid/graphics/Paint;)F
    .locals 9
    .parameter "start"
    .parameter "end"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "flags"
    .parameter "advances"
    .parameter "advancesIndex"
    .parameter "p"

    .prologue
    .line 9066
    sub-int v3, p2, p1

    .line 9067
    .local v3, count:I
    sub-int v5, p4, p3

    .line 9068
    .local v5, contextCount:I
    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int v2, p1, v0

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int v4, p3, v0

    move-object/from16 v0, p8

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIII[FI)F

    move-result v0

    return v0
.end method

.method public getTextRunAdvances(IIIII[FILandroid/graphics/Paint;I)F
    .locals 10
    .parameter "start"
    .parameter "end"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "flags"
    .parameter "advances"
    .parameter "advancesIndex"
    .parameter "p"
    .parameter "reserved"

    .prologue
    .line 9076
    sub-int v3, p2, p1

    .line 9077
    .local v3, count:I
    sub-int v5, p4, p3

    .line 9078
    .local v5, contextCount:I
    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int v2, p1, v0

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int v4, p3, v0

    move-object/from16 v0, p8

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIII[FII)F

    move-result v0

    return v0
.end method

.method public getTextRunCursor(IIIIILandroid/graphics/Paint;)I
    .locals 7
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "flags"
    .parameter "offset"
    .parameter "cursorOpt"
    .parameter "p"

    .prologue
    .line 9085
    sub-int v3, p2, p1

    .line 9086
    .local v3, contextCount:I
    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int v2, p1, v0

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int v5, p4, v0

    move-object v0, p6

    move v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result v0

    return v0
.end method

.method public getTextWidths(II[FLandroid/graphics/Paint;)I
    .locals 3
    .parameter "start"
    .parameter "end"
    .parameter "widths"
    .parameter "p"

    .prologue
    .line 9060
    iget-object v0, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v1, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-virtual {p4, v0, v1, v2, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 9014
    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    return v0
.end method

.method public measureText(IILandroid/graphics/Paint;)F
    .locals 3
    .parameter "start"
    .parameter "end"
    .parameter "p"

    .prologue
    .line 9056
    iget-object v0, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v1, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-virtual {p3, v0, v1, v2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    return v0
.end method

.method set([CII)V
    .locals 0
    .parameter "chars"
    .parameter "start"
    .parameter "len"

    .prologue
    .line 9008
    iput-object p1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    .line 9009
    iput p2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    .line 9010
    iput p3, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    .line 9011
    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 9027
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    if-gt p1, v0, :cond_0

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    if-le p2, v0, :cond_1

    .line 9028
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9031
    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr v2, p1

    sub-int v3, p2, p1

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 9023
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    iget v3, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
