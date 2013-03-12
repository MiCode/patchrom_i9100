.class public Landroid/text/Selection;
.super Ljava/lang/Object;
.source "Selection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Selection$1;,
        Landroid/text/Selection$END;,
        Landroid/text/Selection$START;,
        Landroid/text/Selection$PositionIterator;
    }
.end annotation


# static fields
.field public static final SELECTION_END:Ljava/lang/Object;

.field public static final SELECTION_START:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 493
    new-instance v0, Landroid/text/Selection$START;

    invoke-direct {v0, v1}, Landroid/text/Selection$START;-><init>(Landroid/text/Selection$1;)V

    sput-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    .line 494
    new-instance v0, Landroid/text/Selection$END;

    invoke-direct {v0, v1}, Landroid/text/Selection$END;-><init>(Landroid/text/Selection$1;)V

    sput-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static chooseHorizontal(Landroid/text/Layout;III)I
    .locals 7
    .parameter "layout"
    .parameter "direction"
    .parameter "off1"
    .parameter "off2"

    .prologue
    .line 445
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 446
    .local v3, line1:I
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 448
    .local v4, line2:I
    if-ne v3, v4, :cond_3

    .line 451
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    .line 452
    .local v0, h1:F
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 454
    .local v1, h2:F
    if-gez p1, :cond_2

    .line 457
    cmpg-float v6, v0, v1

    if-gez v6, :cond_1

    .line 482
    .end local v0           #h1:F
    .end local v1           #h2:F
    .end local p2
    :cond_0
    :goto_0
    return p2

    .restart local v0       #h1:F
    .restart local v1       #h2:F
    .restart local p2
    :cond_1
    move p2, p3

    .line 460
    goto :goto_0

    .line 464
    :cond_2
    cmpl-float v6, v0, v1

    if-gtz v6, :cond_0

    move p2, p3

    .line 467
    goto :goto_0

    .line 476
    .end local v0           #h1:F
    .end local v1           #h2:F
    :cond_3
    invoke-virtual {p0, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 477
    .local v2, line:I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 479
    .local v5, textdir:I
    if-ne v5, p1, :cond_4

    .line 480
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_0

    .line 482
    :cond_4
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0
.end method

.method public static extendDown(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 7
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v6, 0x1

    .line 310
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 311
    .local v0, end:I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 313
    .local v2, line:I
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_2

    .line 316
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 318
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 319
    .local v1, h:F
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v3

    .line 324
    .end local v1           #h:F
    .local v3, move:I
    :goto_0
    invoke-static {p0, v3}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 331
    .end local v3           #move:I
    :cond_0
    :goto_1
    return v6

    .line 321
    :cond_1
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .restart local v3       #move:I
    goto :goto_0

    .line 326
    .end local v3           #move:I
    :cond_2
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    if-eq v0, v4, :cond_0

    .line 327
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    invoke-static {p0, v4}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_1
.end method

.method public static extendLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 3
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v2, 0x1

    .line 339
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 340
    .local v0, end:I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v1

    .line 342
    .local v1, to:I
    if-eq v1, v0, :cond_0

    .line 343
    invoke-static {p0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 347
    :cond_0
    return v2
.end method

.method public static extendRight(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 3
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v2, 0x1

    .line 355
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 356
    .local v0, end:I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v1

    .line 358
    .local v1, to:I
    if-eq v1, v0, :cond_0

    .line 359
    invoke-static {p0, v1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 363
    :cond_0
    return v2
.end method

.method public static final extendSelection(Landroid/text/Spannable;I)V
    .locals 2
    .parameter "text"
    .parameter "index"

    .prologue
    .line 129
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 130
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v1, 0x22

    invoke-interface {p0, v0, p1, p1, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 131
    :cond_0
    return-void
.end method

.method public static extendToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .parameter "text"
    .parameter "layout"

    .prologue
    .line 367
    const/4 v1, -0x1

    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 368
    .local v0, where:I
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 369
    const/4 v1, 0x1

    return v1
.end method

.method public static extendToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v1, 0x1

    .line 373
    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 374
    .local v0, where:I
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 375
    return v1
.end method

.method public static extendUp(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 7
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v6, 0x1

    .line 281
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 282
    .local v0, end:I
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 284
    .local v2, line:I
    if-lez v2, :cond_2

    .line 287
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p1, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 289
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 290
    .local v1, h:F
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p1, v4, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v3

    .line 295
    .end local v1           #h:F
    .local v3, move:I
    :goto_0
    invoke-static {p0, v3}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 302
    .end local v3           #move:I
    :cond_0
    :goto_1
    return v6

    .line 292
    :cond_1
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .restart local v3       #move:I
    goto :goto_0

    .line 297
    .end local v3           #move:I
    :cond_2
    if-eqz v0, :cond_0

    .line 298
    const/4 v4, 0x0

    invoke-static {p0, v4}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_1
.end method

.method private static findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I
    .locals 5
    .parameter "text"
    .parameter "layout"
    .parameter "dir"

    .prologue
    .line 427
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 428
    .local v3, pt:I
    invoke-virtual {p1, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 429
    .local v1, line:I
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    .line 431
    .local v2, pdir:I
    mul-int v4, p2, v2

    if-gez v4, :cond_1

    .line 432
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    .line 439
    :cond_0
    :goto_0
    return v0

    .line 434
    :cond_1
    invoke-virtual {p1, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 436
    .local v0, end:I
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_0

    .line 439
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static final getSelectionEnd(Ljava/lang/CharSequence;)I
    .locals 1
    .parameter "text"

    .prologue
    .line 50
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 51
    check-cast p0, Landroid/text/Spanned;

    .end local p0
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 53
    :goto_0
    return v0

    .restart local p0
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static final getSelectionStart(Ljava/lang/CharSequence;)I
    .locals 1
    .parameter "text"

    .prologue
    .line 39
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 40
    check-cast p0, Landroid/text/Spanned;

    .end local p0
    sget-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 42
    :goto_0
    return v0

    .restart local p0
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 10
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 191
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    .line 192
    .local v6, start:I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 194
    .local v0, end:I
    if-eq v6, v0, :cond_2

    .line 195
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 196
    .local v4, min:I
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 198
    .local v3, max:I
    invoke-static {p0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 200
    if-nez v4, :cond_1

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v9

    if-ne v3, v9, :cond_1

    .line 224
    .end local v3           #max:I
    .end local v4           #min:I
    :cond_0
    :goto_0
    return v7

    .restart local v3       #max:I
    .restart local v4       #min:I
    :cond_1
    move v7, v8

    .line 204
    goto :goto_0

    .line 206
    .end local v3           #max:I
    .end local v4           #min:I
    :cond_2
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 208
    .local v2, line:I
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v2, v9, :cond_0

    .line 211
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {p1, v9}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v9

    if-ne v7, v9, :cond_3

    .line 213
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 214
    .local v1, h:F
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v5

    .line 219
    .end local v1           #h:F
    .local v5, move:I
    :goto_1
    invoke-static {p0, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v7, v8

    .line 220
    goto :goto_0

    .line 216
    .end local v5           #move:I
    :cond_3
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .restart local v5       #move:I
    goto :goto_1
.end method

.method public static moveLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 5
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v3, 0x1

    .line 233
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 234
    .local v1, start:I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 236
    .local v0, end:I
    if-eq v1, v0, :cond_0

    .line 237
    const/4 v4, -0x1

    invoke-static {p1, v4, v1, v0}, Landroid/text/Selection;->chooseHorizontal(Landroid/text/Layout;III)I

    move-result v4

    invoke-static {p0, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 248
    :goto_0
    return v3

    .line 240
    :cond_0
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v2

    .line 242
    .local v2, to:I
    if-eq v2, v0, :cond_1

    .line 243
    invoke-static {p0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 248
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static moveRight(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 5
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v3, 0x1

    .line 258
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 259
    .local v1, start:I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 261
    .local v0, end:I
    if-eq v1, v0, :cond_0

    .line 262
    invoke-static {p1, v3, v1, v0}, Landroid/text/Selection;->chooseHorizontal(Landroid/text/Layout;III)I

    move-result v4

    invoke-static {p0, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 273
    :goto_0
    return v3

    .line 265
    :cond_0
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v2

    .line 267
    .local v2, to:I
    if-eq v2, v0, :cond_1

    .line 268
    invoke-static {p0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 273
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static moveToFollowing(Landroid/text/Spannable;Landroid/text/Selection$PositionIterator;Z)Z
    .locals 2
    .parameter "text"
    .parameter "iter"
    .parameter "extendSelection"

    .prologue
    .line 415
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/text/Selection$PositionIterator;->following(I)I

    move-result v0

    .line 416
    .local v0, offset:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 417
    if-eqz p2, :cond_1

    .line 418
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 423
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 420
    :cond_1
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0
.end method

.method public static moveToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .parameter "text"
    .parameter "layout"

    .prologue
    .line 379
    const/4 v1, -0x1

    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 380
    .local v0, where:I
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 381
    const/4 v1, 0x1

    return v1
.end method

.method public static moveToPreceding(Landroid/text/Spannable;Landroid/text/Selection$PositionIterator;Z)Z
    .locals 2
    .parameter "text"
    .parameter "iter"
    .parameter "extendSelection"

    .prologue
    .line 401
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/text/Selection$PositionIterator;->preceding(I)I

    move-result v0

    .line 402
    .local v0, offset:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 403
    if-eqz p2, :cond_1

    .line 404
    invoke-static {p0, v0}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 409
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 406
    :cond_1
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0
.end method

.method public static moveToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 2
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v1, 0x1

    .line 385
    invoke-static {p0, p1, v1}, Landroid/text/Selection;->findEdge(Landroid/text/Spannable;Landroid/text/Layout;I)I

    move-result v0

    .line 386
    .local v0, where:I
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 387
    return v1
.end method

.method public static moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z
    .locals 10
    .parameter "text"
    .parameter "layout"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 150
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    .line 151
    .local v6, start:I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 153
    .local v0, end:I
    if-eq v6, v0, :cond_2

    .line 154
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 155
    .local v4, min:I
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 157
    .local v3, max:I
    invoke-static {p0, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 159
    if-nez v4, :cond_1

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v9

    if-ne v3, v9, :cond_1

    .line 183
    .end local v3           #max:I
    .end local v4           #min:I
    :cond_0
    :goto_0
    return v7

    .restart local v3       #max:I
    .restart local v4       #min:I
    :cond_1
    move v7, v8

    .line 163
    goto :goto_0

    .line 165
    .end local v3           #max:I
    .end local v4           #min:I
    :cond_2
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 167
    .local v2, line:I
    if-lez v2, :cond_0

    .line 170
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    add-int/lit8 v9, v2, -0x1

    invoke-virtual {p1, v9}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v9

    if-ne v7, v9, :cond_3

    .line 172
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    .line 173
    .local v1, h:F
    add-int/lit8 v7, v2, -0x1

    invoke-virtual {p1, v7, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v5

    .line 178
    .end local v1           #h:F
    .local v5, move:I
    :goto_1
    invoke-static {p0, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v7, v8

    .line 179
    goto :goto_0

    .line 175
    .end local v5           #move:I
    :cond_3
    add-int/lit8 v7, v2, -0x1

    invoke-virtual {p1, v7}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .restart local v5       #move:I
    goto :goto_1
.end method

.method public static final removeSelection(Landroid/text/Spannable;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 137
    sget-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 138
    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 139
    return-void
.end method

.method public static final selectAll(Landroid/text/Spannable;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 123
    return-void
.end method

.method public static final setSelection(Landroid/text/Spannable;I)V
    .locals 0
    .parameter "text"
    .parameter "index"

    .prologue
    .line 115
    invoke-static {p0, p1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 116
    return-void
.end method

.method public static setSelection(Landroid/text/Spannable;II)V
    .locals 13
    .parameter "text"
    .parameter "start"
    .parameter "stop"

    .prologue
    .line 73
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v10

    .line 74
    .local v10, ostart:I
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v9

    .line 79
    .local v9, oend:I
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v3

    .line 80
    .local v3, len:I
    if-ge p1, v3, :cond_2

    if-ge p2, v3, :cond_2

    .line 81
    invoke-interface {p0, p1}, Landroid/text/Spannable;->charAt(I)C

    move-result v11

    .line 82
    .local v11, startChar:C
    invoke-interface {p0, p2}, Landroid/text/Spannable;->charAt(I)C

    move-result v12

    .line 84
    .local v12, stopChar:C
    invoke-static {v11}, Landroid/text/TextUtils;->isIndianChar(C)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v11}, Landroid/text/TextUtils;->isThaiChar(C)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v12}, Landroid/text/TextUtils;->isIndianChar(C)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v12}, Landroid/text/TextUtils;->isThaiChar(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 87
    :cond_0
    new-array v7, v3, [F

    .line 88
    .local v7, widths:[F
    new-array v1, v3, [C

    .line 89
    .local v1, chars:[C
    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 91
    .local v0, p:Landroid/graphics/Paint;
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v1, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 92
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v5, v3

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIII[FI)F

    .line 94
    :goto_0
    if-ge p1, v3, :cond_1

    aget v2, v7, p1

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1

    .line 95
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 97
    :cond_1
    :goto_1
    if-ge p2, v3, :cond_2

    aget v2, v7, p2

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    .line 98
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 103
    .end local v0           #p:Landroid/graphics/Paint;
    .end local v1           #chars:[C
    .end local v7           #widths:[F
    .end local v11           #startChar:C
    .end local v12           #stopChar:C
    :cond_2
    if-ne v10, p1, :cond_3

    if-eq v9, p2, :cond_4

    .line 104
    :cond_3
    sget-object v2, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    const/16 v4, 0x222

    invoke-interface {p0, v2, p1, p1, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 106
    sget-object v2, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v4, 0x22

    invoke-interface {p0, v2, p2, p2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 109
    :cond_4
    return-void
.end method
