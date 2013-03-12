.class public Landroid/view/inputmethod/BaseInputConnection;
.super Ljava/lang/Object;
.source "BaseInputConnection.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# static fields
.field static final COMPOSING:Ljava/lang/Object; = null

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BaseInputConnection"


# instance fields
.field private mDefaultComposingSpans:[Ljava/lang/Object;

.field final mDummyMode:Z

.field mEditable:Landroid/text/Editable;

.field protected final mIMM:Landroid/view/inputmethod/InputMethodManager;

.field mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field final mTargetView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Landroid/view/inputmethod/ComposingText;

    invoke-direct {v0}, Landroid/view/inputmethod/ComposingText;-><init>()V

    sput-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 2
    .parameter "targetView"
    .parameter "fullEditor"

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 71
    iput-object p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    .line 72
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    .line 73
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Z)V
    .locals 1
    .parameter "mgr"
    .parameter "fullEditor"

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    .line 65
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    .line 66
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private convertBracket(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 6
    .parameter "text"

    .prologue
    const/16 v5, 0x300b

    const/16 v4, 0x300a

    const/16 v3, 0xbb

    const/16 v2, 0xab

    .line 815
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 817
    .local v0, sText:Ljava/lang/String;
    const-string/jumbo v1, "{"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 818
    const-string/jumbo v0, "}"

    .line 842
    :cond_0
    :goto_0
    return-object v0

    .line 819
    :cond_1
    const-string/jumbo v1, "}"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 820
    const-string/jumbo v0, "{"

    goto :goto_0

    .line 821
    :cond_2
    const-string v1, "["

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 822
    const-string v0, "]"

    goto :goto_0

    .line 823
    :cond_3
    const-string v1, "]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 824
    const-string v0, "["

    goto :goto_0

    .line 825
    :cond_4
    const-string v1, "<"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 826
    const-string v0, ">"

    goto :goto_0

    .line 827
    :cond_5
    const-string v1, ">"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 828
    const-string v0, "<"

    goto :goto_0

    .line 829
    :cond_6
    const-string v1, "("

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 830
    const-string v0, ")"

    goto :goto_0

    .line 831
    :cond_7
    const-string v1, ")"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 832
    const-string v0, "("

    goto :goto_0

    .line 833
    :cond_8
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 834
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 835
    :cond_9
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 836
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 837
    :cond_a
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 838
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 839
    :cond_b
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 840
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private ensureDefaultComposingSpans()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 569
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 571
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 572
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 578
    .local v0, context:Landroid/content/Context;
    :goto_0
    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [I

    const v5, 0x1010230

    aput v5, v4, v6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 583
    .local v2, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 584
    .local v1, style:Ljava/lang/CharSequence;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 585
    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/text/Spanned;

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 586
    check-cast v3, Landroid/text/Spanned;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Ljava/lang/Object;

    invoke-interface {v3, v6, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    .line 591
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #style:Ljava/lang/CharSequence;
    .end local v2           #ta:Landroid/content/res/TypedArray;
    :cond_0
    return-void

    .line 573
    :cond_1
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 574
    iget-object v3, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .restart local v0       #context:Landroid/content/Context;
    goto :goto_0

    .line 576
    .end local v0           #context:Landroid/content/Context;
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #context:Landroid/content/Context;
    goto :goto_0
.end method

.method public static getComposingSpanEnd(Landroid/text/Spannable;)I
    .locals 1
    .parameter "text"

    .prologue
    .line 123
    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static getComposingSpanStart(Landroid/text/Spannable;)I
    .locals 1
    .parameter "text"

    .prologue
    .line 119
    sget-object v0, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private isBracketChar(Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "text"

    .prologue
    .line 807
    const-string v0, "<>{}[]()\u00ab\u00bb\u300a\u300b"

    .line 808
    .local v0, BRACKET:Ljava/lang/String;
    const-string v1, "<>{}[]()\u00ab\u00bb\u300a\u300b"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 809
    const/4 v1, 0x1

    .line 811
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isRTLText(Ljava/lang/String;I)Z
    .locals 11
    .parameter "sCurStr"
    .parameter "newCursorPosition"

    .prologue
    .line 688
    const/16 v3, 0xa

    .line 689
    .local v3, PARA:C
    const/4 v1, -0x1

    .line 690
    .local v1, DIRECTION_NONE:I
    const/4 v0, 0x0

    .line 691
    .local v0, DIRECTION_LTR:I
    const/4 v2, 0x1

    .line 692
    .local v2, DIRECTION_RTL:I
    const/4 v6, -0x1

    .line 693
    .local v6, nDirection:I
    const/4 v7, 0x0

    .line 694
    .local v7, nIndex:I
    const/4 v8, -0x1

    .line 696
    .local v8, nLastEnterPos:I
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    .line 697
    if-eqz p2, :cond_0

    .line 698
    const/16 v9, 0xa

    add-int/lit8 v10, p2, -0x1

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v8

    .line 701
    :cond_0
    if-gez v8, :cond_5

    .line 702
    const/4 v8, 0x0

    .line 707
    :goto_0
    move v7, v8

    .line 708
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_1

    .line 709
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 710
    .local v4, ch:C
    const/16 v9, 0xa

    if-ne v4, v9, :cond_6

    .line 729
    .end local v4           #ch:C
    :cond_1
    :goto_2
    move v7, p2

    .line 730
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_2

    .line 731
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 732
    .restart local v4       #ch:C
    const/16 v9, 0xa

    if-ne v4, v9, :cond_b

    .line 749
    .end local v4           #ch:C
    :cond_2
    :goto_4
    const/4 v9, -0x1

    if-ne v6, v9, :cond_4

    .line 750
    add-int/lit8 v7, p2, -0x1

    .line 751
    :goto_5
    if-ltz v7, :cond_3

    .line 752
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 753
    .restart local v4       #ch:C
    const/16 v9, 0xa

    if-ne v4, v9, :cond_e

    .line 773
    .end local v4           #ch:C
    :cond_3
    :goto_6
    const/4 v9, -0x1

    if-ne v6, v9, :cond_4

    .line 774
    move v7, p2

    .line 775
    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_4

    .line 776
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 777
    .restart local v4       #ch:C
    const/16 v9, 0xa

    if-ne v4, v9, :cond_13

    .line 800
    .end local v4           #ch:C
    :cond_4
    :goto_8
    const/4 v9, 0x1

    if-ne v6, v9, :cond_18

    .line 801
    const/4 v9, 0x1

    .line 803
    :goto_9
    return v9

    .line 704
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 712
    .restart local v4       #ch:C
    :cond_6
    invoke-static {v4}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v5

    .line 714
    .local v5, directionality:B
    if-eqz v5, :cond_7

    const/16 v9, 0xe

    if-eq v5, v9, :cond_7

    const/16 v9, 0xf

    if-ne v5, v9, :cond_8

    .line 717
    :cond_7
    const/4 v6, 0x0

    .line 718
    goto :goto_2

    .line 719
    :cond_8
    const/4 v9, 0x1

    if-eq v5, v9, :cond_9

    const/4 v9, 0x2

    if-eq v5, v9, :cond_9

    const/16 v9, 0x10

    if-eq v5, v9, :cond_9

    const/16 v9, 0x11

    if-ne v5, v9, :cond_a

    .line 723
    :cond_9
    const/4 v6, 0x1

    .line 724
    goto :goto_2

    .line 726
    :cond_a
    add-int/lit8 v7, v7, 0x1

    .line 727
    goto :goto_1

    .line 734
    .end local v5           #directionality:B
    :cond_b
    invoke-static {v4}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v5

    .line 735
    .restart local v5       #directionality:B
    if-eqz v5, :cond_c

    const/16 v9, 0xe

    if-eq v5, v9, :cond_c

    const/16 v9, 0xf

    if-eq v5, v9, :cond_c

    const/4 v9, 0x1

    if-eq v5, v9, :cond_c

    const/4 v9, 0x2

    if-eq v5, v9, :cond_c

    const/16 v9, 0x10

    if-eq v5, v9, :cond_c

    const/16 v9, 0x11

    if-eq v5, v9, :cond_c

    const/4 v9, 0x3

    if-ne v5, v9, :cond_d

    .line 743
    :cond_c
    const/4 v6, -0x1

    .line 744
    goto :goto_4

    .line 746
    :cond_d
    add-int/lit8 v7, v7, 0x1

    .line 747
    goto :goto_3

    .line 755
    .end local v5           #directionality:B
    :cond_e
    invoke-static {v4}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v5

    .line 757
    .restart local v5       #directionality:B
    if-eqz v5, :cond_f

    const/16 v9, 0xe

    if-eq v5, v9, :cond_f

    const/16 v9, 0xf

    if-ne v5, v9, :cond_10

    .line 760
    :cond_f
    const/4 v6, 0x0

    .line 761
    goto :goto_6

    .line 763
    :cond_10
    const/4 v9, 0x1

    if-eq v5, v9, :cond_11

    const/4 v9, 0x2

    if-eq v5, v9, :cond_11

    const/16 v9, 0x10

    if-eq v5, v9, :cond_11

    const/16 v9, 0x11

    if-ne v5, v9, :cond_12

    .line 767
    :cond_11
    const/4 v6, 0x1

    .line 768
    goto :goto_6

    .line 770
    :cond_12
    add-int/lit8 v7, v7, -0x1

    .line 771
    goto/16 :goto_5

    .line 779
    .end local v5           #directionality:B
    :cond_13
    invoke-static {v4}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v5

    .line 781
    .restart local v5       #directionality:B
    if-eqz v5, :cond_14

    const/16 v9, 0xe

    if-eq v5, v9, :cond_14

    const/16 v9, 0xf

    if-ne v5, v9, :cond_15

    .line 784
    :cond_14
    const/4 v6, 0x0

    .line 785
    goto/16 :goto_8

    .line 787
    :cond_15
    const/4 v9, 0x1

    if-eq v5, v9, :cond_16

    const/4 v9, 0x2

    if-eq v5, v9, :cond_16

    const/16 v9, 0x10

    if-eq v5, v9, :cond_16

    const/16 v9, 0x11

    if-ne v5, v9, :cond_17

    .line 791
    :cond_16
    const/4 v6, 0x1

    .line 792
    goto/16 :goto_8

    .line 794
    :cond_17
    add-int/lit8 v7, v7, 0x1

    .line 795
    goto/16 :goto_7

    .line 803
    .end local v4           #ch:C
    .end local v5           #directionality:B
    :cond_18
    const/4 v9, 0x0

    goto/16 :goto_9
.end method

.method public static final removeComposingSpans(Landroid/text/Spannable;)V
    .locals 6
    .parameter "text"

    .prologue
    .line 76
    sget-object v3, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 77
    const/4 v3, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Ljava/lang/Object;

    invoke-interface {p0, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 78
    .local v2, sps:[Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 79
    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 80
    aget-object v1, v2, v0

    .line 81
    .local v1, o:Ljava/lang/Object;
    invoke-interface {p0, v1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_0

    .line 82
    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 79
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 86
    .end local v0           #i:I
    .end local v1           #o:Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private replaceText(Ljava/lang/CharSequence;IZ)V
    .locals 10
    .parameter "text"
    .parameter "newCursorPosition"
    .parameter "composing"

    .prologue
    const/4 v6, -0x1

    .line 595
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 596
    .local v2, content:Landroid/text/Editable;
    if-nez v2, :cond_0

    .line 685
    :goto_0
    return-void

    .line 600
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 603
    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v0

    .line 604
    .local v0, a:I
    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    .line 608
    .local v1, b:I
    if-ge v1, v0, :cond_1

    .line 609
    move v5, v0

    .line 610
    .local v5, tmp:I
    move v0, v1

    .line 611
    move v1, v5

    .line 614
    .end local v5           #tmp:I
    :cond_1
    if-eq v0, v6, :cond_3

    if-eq v1, v6, :cond_3

    .line 615
    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 628
    :cond_2
    :goto_1
    if-eqz p3, :cond_8

    .line 629
    const/4 v4, 0x0

    .line 630
    .local v4, sp:Landroid/text/Spannable;
    instance-of v6, p1, Landroid/text/Spannable;

    if-nez v6, :cond_6

    .line 631
    new-instance v4, Landroid/text/SpannableStringBuilder;

    .end local v4           #sp:Landroid/text/Spannable;
    invoke-direct {v4, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 632
    .restart local v4       #sp:Landroid/text/Spannable;
    move-object p1, v4

    .line 633
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->ensureDefaultComposingSpans()V

    .line 634
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-eqz v6, :cond_7

    .line 635
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    array-length v6, v6

    if-ge v3, v6, :cond_7

    .line 636
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    aget-object v6, v6, v3

    const/4 v7, 0x0

    invoke-interface {v4}, Landroid/text/Spannable;->length()I

    move-result v8

    const/16 v9, 0x121

    invoke-interface {v4, v6, v7, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 635
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 617
    .end local v3           #i:I
    .end local v4           #sp:Landroid/text/Spannable;
    :cond_3
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 618
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 619
    if-gez v0, :cond_4

    const/4 v0, 0x0

    .line 620
    :cond_4
    if-gez v1, :cond_5

    const/4 v1, 0x0

    .line 621
    :cond_5
    if-ge v1, v0, :cond_2

    .line 622
    move v5, v0

    .line 623
    .restart local v5       #tmp:I
    move v0, v1

    .line 624
    move v1, v5

    goto :goto_1

    .end local v5           #tmp:I
    .restart local v4       #sp:Landroid/text/Spannable;
    :cond_6
    move-object v4, p1

    .line 641
    check-cast v4, Landroid/text/Spannable;

    .line 643
    :cond_7
    invoke-static {v4}, Landroid/view/inputmethod/BaseInputConnection;->setComposingSpans(Landroid/text/Spannable;)V

    .line 662
    .end local v4           #sp:Landroid/text/Spannable;
    :cond_8
    if-lez p2, :cond_c

    .line 663
    add-int/lit8 v6, v1, -0x1

    add-int/2addr p2, v6

    .line 667
    :goto_3
    if-gez p2, :cond_9

    const/4 p2, 0x0

    .line 668
    :cond_9
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v6

    if-le p2, v6, :cond_a

    .line 669
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result p2

    .line 670
    :cond_a
    invoke-static {v2, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 672
    invoke-direct {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->isBracketChar(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Landroid/view/inputmethod/BaseInputConnection;->isRTLText(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 673
    invoke-direct {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->convertBracket(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 676
    :cond_b
    invoke-interface {v2, v0, v1, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 684
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    .line 665
    :cond_c
    add-int/2addr p2, v0

    goto :goto_3
.end method

.method private sendCurrentText()V
    .locals 11

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 530
    iget-boolean v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    if-nez v1, :cond_1

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v8

    .line 535
    .local v8, content:Landroid/text/Editable;
    if-eqz v8, :cond_0

    .line 536
    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v6

    .line 537
    .local v6, N:I
    if-eqz v6, :cond_0

    .line 540
    if-ne v6, v2, :cond_4

    .line 543
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    if-nez v1, :cond_2

    .line 544
    invoke-static {v4}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    iput-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 546
    :cond_2
    new-array v7, v2, [C

    .line 547
    .local v7, chars:[C
    invoke-interface {v8, v5, v2, v7, v5}, Landroid/text/Editable;->getChars(II[CI)V

    .line 548
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v1, v7}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v9

    .line 549
    .local v9, events:[Landroid/view/KeyEvent;
    if-eqz v9, :cond_4

    .line 550
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    array-length v1, v9

    if-ge v10, v1, :cond_3

    .line 552
    aget-object v1, v9, v10

    invoke-virtual {p0, v1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 550
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 554
    :cond_3
    invoke-interface {v8}, Landroid/text/Editable;->clear()V

    goto :goto_0

    .line 561
    .end local v7           #chars:[C
    .end local v9           #events:[Landroid/view/KeyEvent;
    .end local v10           #i:I
    :cond_4
    new-instance v0, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Landroid/view/KeyEvent;-><init>(JLjava/lang/String;II)V

    .line 563
    .local v0, event:Landroid/view/KeyEvent;
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 564
    invoke-interface {v8}, Landroid/text/Editable;->clear()V

    goto :goto_0
.end method

.method public static setComposingSpans(Landroid/text/Spannable;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Landroid/view/inputmethod/BaseInputConnection;->setComposingSpans(Landroid/text/Spannable;II)V

    .line 90
    return-void
.end method

.method public static setComposingSpans(Landroid/text/Spannable;II)V
    .locals 8
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v7, 0x121

    .line 94
    const-class v4, Ljava/lang/Object;

    invoke-interface {p0, p1, p2, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 95
    .local v3, sps:[Ljava/lang/Object;
    if-eqz v3, :cond_2

    .line 96
    array-length v4, v3

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 97
    aget-object v2, v3, v1

    .line 98
    .local v2, o:Ljava/lang/Object;
    sget-object v4, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    if-ne v2, v4, :cond_1

    .line 99
    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 96
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 103
    :cond_1
    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 104
    .local v0, fl:I
    and-int/lit16 v4, v0, 0x133

    if-eq v4, v7, :cond_0

    .line 106
    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p0, v2}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    and-int/lit8 v6, v0, -0x34

    or-int/lit16 v6, v6, 0x100

    or-int/lit8 v6, v6, 0x21

    invoke-interface {p0, v2, v4, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 114
    .end local v0           #fl:I
    .end local v1           #i:I
    .end local v2           #o:Ljava/lang/Object;
    :cond_2
    sget-object v4, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {p0, v4, p1, p2, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 116
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 2
    .parameter "states"

    .prologue
    .line 169
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 170
    .local v0, content:Landroid/text/Editable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 172
    :goto_0
    return v1

    .line 171
    :cond_0
    invoke-static {v0, p1}, Landroid/text/method/MetaKeyKeyListener;->clearMetaKeyState(Landroid/text/Editable;I)V

    .line 172
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 1
    .parameter "text"

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 1
    .parameter "correctionInfo"

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    .line 197
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 10
    .parameter "beforeLength"
    .parameter "afterLength"

    .prologue
    const/4 v9, -0x1

    .line 210
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v4

    .line 211
    .local v4, content:Landroid/text/Editable;
    if-nez v4, :cond_0

    const/4 v9, 0x0

    .line 257
    :goto_0
    return v9

    .line 213
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 215
    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 216
    .local v0, a:I
    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 218
    .local v1, b:I
    if-le v0, v1, :cond_1

    .line 219
    move v8, v0

    .line 220
    .local v8, tmp:I
    move v0, v1

    .line 221
    move v1, v8

    .line 225
    .end local v8           #tmp:I
    :cond_1
    invoke-static {v4}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    .line 226
    .local v2, ca:I
    invoke-static {v4}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v3

    .line 227
    .local v3, cb:I
    if-ge v3, v2, :cond_2

    .line 228
    move v8, v2

    .line 229
    .restart local v8       #tmp:I
    move v2, v3

    .line 230
    move v3, v8

    .line 232
    .end local v8           #tmp:I
    :cond_2
    if-eq v2, v9, :cond_4

    if-eq v3, v9, :cond_4

    .line 233
    if-ge v2, v0, :cond_3

    move v0, v2

    .line 234
    :cond_3
    if-le v3, v1, :cond_4

    move v1, v3

    .line 237
    :cond_4
    const/4 v5, 0x0

    .line 239
    .local v5, deleted:I
    if-lez p1, :cond_6

    .line 240
    sub-int v7, v0, p1

    .line 241
    .local v7, start:I
    if-gez v7, :cond_5

    const/4 v7, 0x0

    .line 242
    :cond_5
    invoke-interface {v4, v7, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 243
    sub-int v5, v0, v7

    .line 246
    .end local v7           #start:I
    :cond_6
    if-lez p2, :cond_8

    .line 247
    sub-int/2addr v1, v5

    .line 249
    add-int v6, v1, p2

    .line 250
    .local v6, end:I
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v9

    if-le v6, v9, :cond_7

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v6

    .line 252
    :cond_7
    invoke-interface {v4, v1, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 255
    .end local v6           #end:I
    :cond_8
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 257
    const/4 v9, 0x1

    goto :goto_0
.end method

.method public endBatchEdit()Z
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public finishComposingText()Z
    .locals 2

    .prologue
    .line 267
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 268
    .local v0, content:Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 270
    invoke-static {v0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 271
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 272
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 274
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public getCursorCapsMode(I)I
    .locals 6
    .parameter "reqModes"

    .prologue
    const/4 v4, 0x0

    .line 283
    iget-boolean v5, p0, Landroid/view/inputmethod/BaseInputConnection;->mDummyMode:Z

    if-eqz v5, :cond_1

    .line 297
    :cond_0
    :goto_0
    return v4

    .line 285
    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 286
    .local v2, content:Landroid/text/Editable;
    if-eqz v2, :cond_0

    .line 288
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 289
    .local v0, a:I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 291
    .local v1, b:I
    if-le v0, v1, :cond_2

    .line 292
    move v3, v0

    .line 293
    .local v3, tmp:I
    move v0, v1

    .line 294
    move v1, v3

    .line 297
    .end local v3           #tmp:I
    :cond_2
    invoke-static {v2, v0, p1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v4

    goto :goto_0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    if-nez v0, :cond_0

    .line 134
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    .line 135
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 137
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mEditable:Landroid/text/Editable;

    return-object v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 1
    .parameter "request"
    .parameter "flags"

    .prologue
    .line 304
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 5
    .parameter "flags"

    .prologue
    const/4 v4, 0x0

    .line 343
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 344
    .local v2, content:Landroid/text/Editable;
    if-nez v2, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-object v4

    .line 346
    :cond_1
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 347
    .local v0, a:I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 349
    .local v1, b:I
    if-le v0, v1, :cond_2

    .line 350
    move v3, v0

    .line 351
    .local v3, tmp:I
    move v0, v1

    .line 352
    move v1, v3

    .line 355
    .end local v3           #tmp:I
    :cond_2
    if-eq v0, v1, :cond_0

    .line 357
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_3

    .line 358
    invoke-interface {v2, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 360
    :cond_3
    invoke-static {v2, v0, v1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 6
    .parameter "length"
    .parameter "flags"

    .prologue
    .line 368
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 369
    .local v2, content:Landroid/text/Editable;
    if-nez v2, :cond_0

    const/4 v4, 0x0

    .line 393
    :goto_0
    return-object v4

    .line 371
    :cond_0
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 372
    .local v0, a:I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 374
    .local v1, b:I
    if-le v0, v1, :cond_1

    .line 375
    move v3, v0

    .line 376
    .local v3, tmp:I
    move v0, v1

    .line 377
    move v1, v3

    .line 381
    .end local v3           #tmp:I
    :cond_1
    if-gez v1, :cond_2

    .line 382
    const/4 v1, 0x0

    .line 385
    :cond_2
    add-int v4, v1, p1

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 386
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    sub-int p1, v4, v1

    .line 390
    :cond_3
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_4

    .line 391
    add-int v4, v1, p1

    invoke-interface {v2, v1, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 393
    :cond_4
    add-int v4, v1, p1

    invoke-static {v2, v1, v4}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 5
    .parameter "length"
    .parameter "flags"

    .prologue
    .line 312
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 313
    .local v2, content:Landroid/text/Editable;
    if-nez v2, :cond_0

    const/4 v4, 0x0

    .line 335
    :goto_0
    return-object v4

    .line 315
    :cond_0
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 316
    .local v0, a:I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 318
    .local v1, b:I
    if-le v0, v1, :cond_1

    .line 319
    move v3, v0

    .line 320
    .local v3, tmp:I
    move v0, v1

    .line 321
    move v1, v3

    .line 324
    .end local v3           #tmp:I
    :cond_1
    if-gtz v0, :cond_2

    .line 325
    const-string v4, ""

    goto :goto_0

    .line 328
    :cond_2
    if-le p1, v0, :cond_3

    .line 329
    move p1, v0

    .line 332
    :cond_3
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_4

    .line 333
    sub-int v4, v0, p1

    invoke-interface {v2, v4, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_0

    .line 335
    :cond_4
    sub-int v4, v0, p1

    invoke-static {v2, v4, v0}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public performContextMenuAction(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 418
    const/4 v0, 0x0

    return v0
.end method

.method public performEditorAction(I)Z
    .locals 15
    .parameter "actionCode"

    .prologue
    .line 400
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 401
    .local v1, eventTime:J
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/16 v6, 0x42

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x16

    move-wide v3, v1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 406
    new-instance v3, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v8, 0x1

    const/16 v9, 0x42

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x16

    move-wide v6, v1

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {p0, v3}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 411
    const/4 v0, 0x1

    return v0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "action"
    .parameter "data"

    .prologue
    .line 425
    const/4 v0, 0x0

    return v0
.end method

.method protected reportFinish()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    .line 525
    iget-object v0, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->setFullscreenMode(Z)V

    .line 526
    const/4 v0, 0x1

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 507
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    .line 508
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 509
    .local v0, viewRootImpl:Landroid/view/ViewRootImpl;
    :goto_0
    if-nez v0, :cond_0

    .line 510
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 511
    iget-object v1, p0, Landroid/view/inputmethod/BaseInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 514
    :cond_0
    if-eqz v0, :cond_1

    .line 515
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    .line 517
    :cond_1
    monitor-exit v2

    .line 518
    const/4 v1, 0x0

    return v1

    .line 508
    .end local v0           #viewRootImpl:Landroid/view/ViewRootImpl;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 517
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setComposingRegion(II)Z
    .locals 8
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v7, 0x121

    .line 440
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    .line 441
    .local v2, content:Landroid/text/Editable;
    if-eqz v2, :cond_6

    .line 442
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->beginBatchEdit()Z

    .line 443
    invoke-static {v2}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 444
    move v0, p1

    .line 445
    .local v0, a:I
    move v1, p2

    .line 446
    .local v1, b:I
    if-le v0, v1, :cond_0

    .line 447
    move v5, v0

    .line 448
    .local v5, tmp:I
    move v0, v1

    .line 449
    move v1, v5

    .line 452
    .end local v5           #tmp:I
    :cond_0
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    .line 453
    .local v4, length:I
    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 454
    :cond_1
    if-gez v1, :cond_2

    const/4 v1, 0x0

    .line 455
    :cond_2
    if-le v0, v4, :cond_3

    move v0, v4

    .line 456
    :cond_3
    if-le v1, v4, :cond_4

    move v1, v4

    .line 458
    :cond_4
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->ensureDefaultComposingSpans()V

    .line 459
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    if-eqz v6, :cond_5

    .line 460
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    array-length v6, v6

    if-ge v3, v6, :cond_5

    .line 461
    iget-object v6, p0, Landroid/view/inputmethod/BaseInputConnection;->mDefaultComposingSpans:[Ljava/lang/Object;

    aget-object v6, v6, v3

    invoke-interface {v2, v6, v0, v1, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 460
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 466
    .end local v3           #i:I
    :cond_5
    sget-object v6, Landroid/view/inputmethod/BaseInputConnection;->COMPOSING:Ljava/lang/Object;

    invoke-interface {v2, v6, v0, v1, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 469
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->endBatchEdit()Z

    .line 470
    invoke-direct {p0}, Landroid/view/inputmethod/BaseInputConnection;->sendCurrentText()V

    .line 472
    .end local v0           #a:I
    .end local v1           #b:I
    .end local v4           #length:I
    :cond_6
    const/4 v6, 0x1

    return v6
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    const/4 v0, 0x1

    .line 435
    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/BaseInputConnection;->replaceText(Ljava/lang/CharSequence;IZ)V

    .line 436
    return v0
.end method

.method public setSelection(II)Z
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v2, 0x1

    .line 481
    invoke-virtual {p0}, Landroid/view/inputmethod/BaseInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 482
    .local v0, content:Landroid/text/Editable;
    if-nez v0, :cond_1

    const/4 v2, 0x0

    .line 499
    :cond_0
    :goto_0
    return v2

    .line 483
    :cond_1
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 484
    .local v1, len:I
    if-gt p1, v1, :cond_0

    if-gt p2, v1, :cond_0

    .line 491
    if-ne p1, p2, :cond_2

    const/16 v3, 0x800

    invoke-static {v0, v3}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-eqz v3, :cond_2

    .line 495
    invoke-static {v0, p1}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 497
    :cond_2
    invoke-static {v0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0
.end method
