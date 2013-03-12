.class public Landroid/text/method/WordIterator;
.super Ljava/lang/Object;
.source "WordIterator.java"

# interfaces
.implements Landroid/text/Selection$PositionIterator;


# static fields
.field private static final WINDOW_WIDTH:I = 0x32


# instance fields
.field private mIterator:Ljava/text/BreakIterator;

.field private mOffsetShift:I

.field private mString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .parameter "locale"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    .line 56
    return-void
.end method

.method private checkOffsetIsValid(I)V
    .locals 4
    .parameter "shiftedOffset"

    .prologue
    .line 175
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Valid range is ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_1
    return-void
.end method

.method private getFollowingOffset(I)I
    .locals 4
    .parameter "shiftedOffset"

    .prologue
    .line 227
    iget-object v2, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 228
    .local v1, length:I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-ge p1, v2, :cond_0

    .line 229
    iget-object v2, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 230
    .local v0, codePoint:I
    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->isNewLine(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    .end local v0           #codePoint:I
    :cond_0
    add-int/lit8 v2, p1, 0x1

    return v2

    .line 231
    .restart local v0       #codePoint:I
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 232
    goto :goto_0
.end method

.method private getPreceedingOffset(I)I
    .locals 3
    .parameter "shiftedOffset"

    .prologue
    .line 237
    :goto_0
    if-lez p1, :cond_0

    .line 238
    iget-object v1, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 239
    .local v0, codePoint:I
    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->isNewLine(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    .end local v0           #codePoint:I
    :cond_0
    return p1

    .line 240
    .restart local v0       #codePoint:I
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 241
    goto :goto_0
.end method

.method private isAfterLetterOrDigit(I)Z
    .locals 3
    .parameter "shiftedOffset"

    .prologue
    const/4 v1, 0x1

    .line 159
    if-lt p1, v1, :cond_0

    iget-object v2, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p1, v2, :cond_0

    .line 160
    iget-object v2, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->codePointBefore(I)I

    move-result v0

    .line 161
    .local v0, codePoint:I
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    .end local v0           #codePoint:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNewLine(I)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 246
    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x85

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2029

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2028

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNotAfterSpace(I)Z
    .locals 3
    .parameter "shiftedOffset"

    .prologue
    const/4 v1, 0x1

    .line 210
    if-lt p1, v1, :cond_0

    iget-object v2, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p1, v2, :cond_0

    .line 211
    iget-object v2, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->codePointBefore(I)I

    move-result v0

    .line 212
    .local v0, codePoint:I
    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 214
    .end local v0           #codePoint:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNotOnSpace(I)Z
    .locals 2
    .parameter "shiftedOffset"

    .prologue
    .line 218
    if-ltz p1, :cond_0

    iget-object v1, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 219
    iget-object v1, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 220
    .local v0, codePoint:I
    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 222
    .end local v0           #codePoint:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isOnLetterOrDigit(I)Z
    .locals 2
    .parameter "shiftedOffset"

    .prologue
    .line 167
    if-ltz p1, :cond_0

    iget-object v1, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 168
    iget-object v1, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 169
    .local v0, codePoint:I
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 171
    .end local v0           #codePoint:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public following(I)I
    .locals 3
    .parameter "offset"

    .prologue
    const/4 v1, -0x1

    .line 86
    iget v2, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    sub-int v0, p1, v2

    .line 88
    .local v0, shiftedOffset:I
    :cond_0
    iget-object v2, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v2, v0}, Ljava/text/BreakIterator;->following(I)I

    move-result v0

    .line 89
    if-ne v0, v1, :cond_1

    .line 93
    :goto_0
    return v1

    .line 92
    :cond_1
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->isAfterLetterOrDigit(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    iget v1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    add-int/2addr v1, v0

    goto :goto_0
.end method

.method public getBeginning(I)I
    .locals 3
    .parameter "offset"

    .prologue
    .line 111
    iget v1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    sub-int v0, p1, v1

    .line 112
    .local v0, shiftedOffset:I
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->checkOffsetIsValid(I)V

    .line 114
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->isOnLetterOrDigit(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    iget v1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    add-int/2addr v1, v0

    .line 125
    :goto_0
    return v1

    .line 118
    :cond_0
    iget-object v1, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v1

    iget v2, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    add-int/2addr v1, v2

    goto :goto_0

    .line 121
    :cond_1
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->isAfterLetterOrDigit(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    iget-object v1, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v1

    iget v2, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    add-int/2addr v1, v2

    goto :goto_0

    .line 125
    :cond_2
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getBeginningSelection(I)I
    .locals 3
    .parameter "offset"

    .prologue
    .line 184
    iget v1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    sub-int v0, p1, v1

    .line 185
    .local v0, shiftedOffset:I
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->checkOffsetIsValid(I)V

    .line 187
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->isNotOnSpace(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->getPreceedingOffset(I)I

    move-result v1

    iget v2, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    add-int/2addr v1, v2

    .line 193
    :goto_0
    return v1

    .line 189
    :cond_0
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->isNotAfterSpace(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->getPreceedingOffset(I)I

    move-result v1

    iget v2, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    add-int/2addr v1, v2

    goto :goto_0

    .line 193
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getEnd(I)I
    .locals 3
    .parameter "offset"

    .prologue
    .line 141
    iget v1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    sub-int v0, p1, v1

    .line 142
    .local v0, shiftedOffset:I
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->checkOffsetIsValid(I)V

    .line 144
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->isAfterLetterOrDigit(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    iget-object v1, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    iget v1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    add-int/2addr v1, v0

    .line 155
    :goto_0
    return v1

    .line 148
    :cond_0
    iget-object v1, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->following(I)I

    move-result v1

    iget v2, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    add-int/2addr v1, v2

    goto :goto_0

    .line 151
    :cond_1
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->isOnLetterOrDigit(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    iget-object v1, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->following(I)I

    move-result v1

    iget v2, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    add-int/2addr v1, v2

    goto :goto_0

    .line 155
    :cond_2
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getEndSelection(I)I
    .locals 3
    .parameter "offset"

    .prologue
    .line 197
    iget v1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    sub-int v0, p1, v1

    .line 198
    .local v0, shiftedOffset:I
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->checkOffsetIsValid(I)V

    .line 200
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->isNotAfterSpace(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->getFollowingOffset(I)I

    move-result v1

    iget v2, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    add-int/2addr v1, v2

    .line 206
    :goto_0
    return v1

    .line 202
    :cond_0
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->isNotOnSpace(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->getFollowingOffset(I)I

    move-result v1

    iget v2, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    add-int/2addr v1, v2

    goto :goto_0

    .line 206
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public preceding(I)I
    .locals 3
    .parameter "offset"

    .prologue
    const/4 v1, -0x1

    .line 72
    iget v2, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    sub-int v0, p1, v2

    .line 74
    .local v0, shiftedOffset:I
    :cond_0
    iget-object v2, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    invoke-virtual {v2, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v0

    .line 75
    if-ne v0, v1, :cond_1

    .line 79
    :goto_0
    return v1

    .line 78
    :cond_1
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->isOnLetterOrDigit(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    iget v1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    add-int/2addr v1, v0

    goto :goto_0
.end method

.method public setCharSequence(Ljava/lang/CharSequence;II)V
    .locals 3
    .parameter "charSequence"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 59
    const/4 v1, 0x0

    add-int/lit8 v2, p2, -0x32

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    .line 60
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v2, p3, 0x32

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 62
    .local v0, windowEnd:I
    instance-of v1, p1, Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_0

    .line 63
    check-cast p1, Landroid/text/SpannableStringBuilder;

    .end local p1
    iget v1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    invoke-virtual {p1, v1, v0}, Landroid/text/SpannableStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    .line 67
    :goto_0
    iget-object v1, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    iget-object v2, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 68
    return-void

    .line 65
    .restart local p1
    :cond_0
    iget v1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    goto :goto_0
.end method
