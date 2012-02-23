.class public Landroid/webkit/HtmlComposerInputConnection;
.super Ljava/lang/Object;
.source "HtmlComposerInputConnection.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    }
.end annotation


# static fields
.field private static final BACKGROUND_COLOR_BLUE:I = -0xf0001

.field private static final BACKGROUND_COLOR_GREEN:I = -0x993256

.field private static final BACKGROUND_COLOR_PURPLE:I = -0x777701

.field private static final BACKGROUND_COLOR_SKYBLUE:I = -0x604933

.field static final COMPOSING:Ljava/lang/Object; = null

.field static final LOGTAG:Ljava/lang/String; = "HtmlComposerInputConnection"

.field public static TTSbefore:I = 0x0

.field private static final rtlFlipsChars:Ljava/lang/String; = "{}[]<>()\u00bb\u00ab"


# instance fields
.field public DEBUG:Z

.field final MAX_SPANS:I

.field public TTSbeforeText:Ljava/lang/String;

.field private TTSstart:I

.field TTStext:Ljava/lang/String;

.field private bBeginBatchEdit:Z

.field bShadeColor:Z

.field composingEnd:I

.field composingStart:I

.field curSelEnd:I

.field curSelStart:I

.field currCompText:Ljava/lang/CharSequence;

.field private mALTKeyIsPressed:Z

.field private mBGColorSpans:[Landroid/text/style/BackgroundColorSpan;

.field private mBackGroundColorSpan:[I

.field mBatchEditNesting:I

.field private mColorSpans:[Landroid/text/style/ForegroundColorSpan;

.field private mCursorPosition:I

.field private mDefaultComposingSpans:[Ljava/lang/Object;

.field mTargetView:Landroid/webkit/HtmlComposerView;

.field spanData:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Landroid/webkit/ComposingText;

    invoke-direct {v0}, Landroid/webkit/ComposingText;-><init>()V

    sput-object v0, Landroid/webkit/HtmlComposerInputConnection;->COMPOSING:Ljava/lang/Object;

    .line 73
    const/4 v0, 0x0

    sput v0, Landroid/webkit/HtmlComposerInputConnection;->TTSbefore:I

    return-void
.end method

.method public constructor <init>(Landroid/webkit/HtmlComposerView;)V
    .locals 3
    .parameter "targetView"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    .line 58
    iput v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 59
    iput v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 60
    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 61
    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 63
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->TTStext:Ljava/lang/String;

    .line 64
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerInputConnection;->bShadeColor:Z

    .line 66
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->currCompText:Ljava/lang/CharSequence;

    .line 72
    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->TTSstart:I

    .line 74
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->TTSbeforeText:Ljava/lang/String;

    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBackGroundColorSpan:[I

    .line 79
    iput v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mCursorPosition:I

    .line 80
    const/16 v0, 0xff

    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->MAX_SPANS:I

    .line 87
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mALTKeyIsPressed:Z

    .line 89
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    .line 101
    iput-object p1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 102
    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    .line 103
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    .line 104
    return-void
.end method

.method private replaceTextToHtml(Ljava/lang/CharSequence;IZ)V
    .locals 29
    .parameter "text"
    .parameter "newCursorPosition"
    .parameter "composing"

    .prologue
    .line 735
    const-string v26, "HtmlComposerInputConnection"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "replaceTextToHtml called here"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    .line 738
    const-string v26, "HtmlComposerInputConnection"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "settings "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " text coming   "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_0
    const-string v6, ""

    .line 745
    .local v6, addStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    move-object/from16 v26, v0

    if-nez v26, :cond_2

    .line 1005
    :cond_1
    :goto_0
    return-void

    .line 748
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 750
    const-string v26, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    .line 763
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Z)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 764
    if-eqz p1, :cond_9

    const-string/jumbo v26, "{}[]<>()\u00bb\u00ab"

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_9

    .line 766
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    move-object/from16 v26, v0

    const/16 v27, 0x3e8

    sget-object v28, Landroid/webkit/WebView$CursorDirection;->BACKWARD:Landroid/webkit/WebView$CursorDirection;

    invoke-virtual/range {v26 .. v28}, Landroid/webkit/HtmlComposerView;->getTextAroundCursor(ILandroid/webkit/WebView$CursorDirection;)Ljava/lang/String;

    move-result-object v9

    .line 768
    .local v9, backContent:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    move-object/from16 v26, v0

    const/16 v27, 0x64

    sget-object v28, Landroid/webkit/WebView$CursorDirection;->FORWARD:Landroid/webkit/WebView$CursorDirection;

    invoke-virtual/range {v26 .. v28}, Landroid/webkit/HtmlComposerView;->getTextAroundCursor(ILandroid/webkit/WebView$CursorDirection;)Ljava/lang/String;

    move-result-object v16

    .line 770
    .local v16, fwdContent:Ljava/lang/String;
    if-nez v9, :cond_4

    if-eqz v16, :cond_9

    .line 771
    :cond_4
    if-nez v9, :cond_f

    .line 772
    const-string v9, ""

    .line 779
    :cond_5
    :goto_1
    move-object v10, v9

    .line 780
    .local v10, backNFwdContent:Ljava/lang/String;
    if-eqz v16, :cond_6

    .line 781
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 783
    :cond_6
    new-instance v8, Ljava/text/Bidi;

    const/16 v26, -0x2

    move/from16 v0, v26

    invoke-direct {v8, v10, v0}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    .line 785
    .local v8, backBIDI:Ljava/text/Bidi;
    const/4 v14, 0x0

    .line 786
    .local v14, flipRTL:Z
    invoke-virtual {v8}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v26

    if-nez v26, :cond_7

    .line 787
    const/4 v14, 0x1

    .line 790
    :cond_7
    if-eqz v16, :cond_8

    .line 791
    new-instance v26, Ljava/lang/StringBuffer;

    move-object/from16 v0, v26

    invoke-direct {v0, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    .line 793
    .local v21, reverseCont:Ljava/lang/String;
    new-instance v11, Ljava/text/Bidi;

    const/16 v26, -0x2

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-direct {v11, v0, v1}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    .line 798
    .local v11, curBIDI:Ljava/text/Bidi;
    invoke-virtual {v8}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v26

    if-eqz v26, :cond_10

    .line 799
    new-instance v15, Ljava/text/Bidi;

    const/16 v26, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-direct {v15, v0, v1}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    .line 806
    .local v15, fwdBIDI:Ljava/text/Bidi;
    :goto_2
    invoke-virtual {v8}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v26

    if-eqz v26, :cond_11

    invoke-virtual {v11}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v26

    if-nez v26, :cond_11

    invoke-virtual {v15}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v26

    if-nez v26, :cond_11

    .line 811
    const/4 v14, 0x1

    .line 839
    .end local v11           #curBIDI:Ljava/text/Bidi;
    .end local v15           #fwdBIDI:Ljava/text/Bidi;
    .end local v21           #reverseCont:Ljava/lang/String;
    :cond_8
    :goto_3
    if-eqz v14, :cond_9

    .line 840
    const-string v26, "HtmlComposerInputConnection"

    const-string v27, "TAGVIVEK  RTL Flipping for {}()<>"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    invoke-virtual/range {p0 .. p1}, Landroid/webkit/HtmlComposerInputConnection;->ConvertBracket(Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    .line 842
    .local v22, sText:Ljava/lang/String;
    if-eqz v22, :cond_9

    .line 843
    move-object/from16 p1, v22

    .line 857
    .end local v8           #backBIDI:Ljava/text/Bidi;
    .end local v9           #backContent:Ljava/lang/String;
    .end local v10           #backNFwdContent:Ljava/lang/String;
    .end local v14           #flipRTL:Z
    .end local v16           #fwdContent:Ljava/lang/String;
    .end local v22           #sText:Ljava/lang/String;
    :cond_9
    :goto_4
    const/16 v23, 0x0

    .line 859
    .local v23, sp:Landroid/text/Spanned;
    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 860
    .local v5, a:I
    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 862
    .local v7, b:I
    const/16 v26, -0x1

    move/from16 v0, v26

    if-ne v5, v0, :cond_a

    const/16 v26, -0x1

    move/from16 v0, v26

    if-ne v7, v0, :cond_a

    .line 863
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v26

    if-eqz v26, :cond_1

    .line 864
    move-object/from16 v0, p0

    iget v5, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 865
    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 869
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/Vector;->clear()V

    .line 870
    if-eqz p1, :cond_c

    .line 872
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move/from16 v26, v0

    if-eqz v26, :cond_14

    move-object/from16 v23, p1

    .line 873
    check-cast v23, Landroid/text/Spanned;

    .line 874
    invoke-static/range {v23 .. v23}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v17

    .line 875
    .local v17, htmltext:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerInputConnection;->getSpanData(Landroid/text/Spanned;)V

    .line 876
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 892
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    move-object/from16 v26, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/HtmlComposerView;->insertTextContent(Ljava/lang/String;IZLjava/util/Vector;)Landroid/webkit/WebView$SelectionOffset;

    move-result-object v19

    .line 895
    .local v19, m_selectionOffset:Landroid/webkit/WebView$SelectionOffset;
    const-string v26, "HtmlComposerInputConnection"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Selection offset value start "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v19

    iget v0, v0, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ",End:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v19

    iget v0, v0, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    if-eqz p3, :cond_16

    .line 907
    move-object/from16 v0, v19

    iget v0, v0, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    move/from16 v26, v0

    add-int v26, v26, v5

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 908
    move-object/from16 v0, v19

    iget v0, v0, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    move/from16 v26, v0

    add-int v26, v26, v5

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 916
    :goto_6
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v26

    add-int v5, v5, v26

    .line 918
    if-lez p2, :cond_17

    .line 919
    add-int/lit8 v26, v5, -0x1

    add-int v26, v26, p2

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 932
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    move/from16 v26, v0

    if-gez v26, :cond_b

    .line 933
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 935
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 936
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 938
    if-nez p2, :cond_c

    move-object/from16 v0, v19

    iget v0, v0, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    move-object/from16 v0, v19

    iget v0, v0, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/webkit/HtmlComposerView;->MoveCursorRight()V

    .line 942
    .end local v17           #htmltext:Ljava/lang/String;
    .end local v19           #m_selectionOffset:Landroid/webkit/WebView$SelectionOffset;
    :cond_c
    if-eqz v6, :cond_1

    .line 944
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    move/from16 v26, v0

    if-eqz v26, :cond_d

    .line 945
    const-string v26, "Predictive addstr"

    move-object/from16 v0, v26

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    :cond_d
    if-eqz p3, :cond_1b

    .line 950
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerInputConnection;->getTTStext()Ljava/lang/String;

    move-result-object v25

    .line 951
    .local v25, tmpstr:Ljava/lang/String;
    const-string v26, "Predictive "

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "compse "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    move/from16 v26, v0

    if-eqz v26, :cond_e

    .line 954
    const-string v26, "Predictive active "

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "getTTStext "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerInputConnection;->getTTStext()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerInputConnection;->getTTSbeforeText()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerInputConnection;->getTTSbeforeText()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_e
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v27

    sub-int v12, v26, v27

    .line 960
    .local v12, diff:I
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v12, v0, :cond_18

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_18

    .line 962
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    .line 963
    const-string v26, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    .line 964
    const/16 v26, 0x1

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerInputConnection;->textToSpeech(II)V

    .line 980
    :goto_8
    const-string v26, " "

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1a

    .line 981
    const-string v26, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 774
    .end local v5           #a:I
    .end local v7           #b:I
    .end local v12           #diff:I
    .end local v23           #sp:Landroid/text/Spanned;
    .end local v25           #tmpstr:Ljava/lang/String;
    .restart local v9       #backContent:Ljava/lang/String;
    .restart local v16       #fwdContent:Ljava/lang/String;
    :cond_f
    const/16 v26, 0xa

    :try_start_1
    move/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v20

    .line 775
    .local v20, newLine:I
    const/16 v26, -0x1

    move/from16 v0, v20

    move/from16 v1, v26

    if-eq v0, v1, :cond_5

    .line 776
    add-int/lit8 v26, v20, 0x1

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 802
    .end local v20           #newLine:I
    .restart local v8       #backBIDI:Ljava/text/Bidi;
    .restart local v10       #backNFwdContent:Ljava/lang/String;
    .restart local v11       #curBIDI:Ljava/text/Bidi;
    .restart local v14       #flipRTL:Z
    .restart local v21       #reverseCont:Ljava/lang/String;
    :cond_10
    new-instance v15, Ljava/text/Bidi;

    const/16 v26, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-direct {v15, v0, v1}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    .restart local v15       #fwdBIDI:Ljava/text/Bidi;
    goto/16 :goto_2

    .line 812
    :cond_11
    invoke-virtual {v8}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v26

    if-eqz v26, :cond_12

    invoke-virtual {v11}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v26

    if-nez v26, :cond_12

    invoke-virtual {v15}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v26

    if-eqz v26, :cond_12

    .line 816
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 817
    :cond_12
    invoke-virtual {v8}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v26

    if-nez v26, :cond_13

    invoke-virtual {v11}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v26

    if-eqz v26, :cond_13

    invoke-virtual {v15}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v26

    if-eqz v26, :cond_13

    .line 821
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 822
    :cond_13
    invoke-virtual {v8}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v26

    if-nez v26, :cond_8

    invoke-virtual {v11}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v26

    if-eqz v26, :cond_8

    invoke-virtual {v15}, Ljava/text/Bidi;->baseIsLeftToRight()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v26

    if-nez v26, :cond_8

    .line 826
    const/4 v14, 0x1

    goto/16 :goto_3

    .line 847
    .end local v8           #backBIDI:Ljava/text/Bidi;
    .end local v9           #backContent:Ljava/lang/String;
    .end local v10           #backNFwdContent:Ljava/lang/String;
    .end local v11           #curBIDI:Ljava/text/Bidi;
    .end local v14           #flipRTL:Z
    .end local v15           #fwdBIDI:Ljava/text/Bidi;
    .end local v16           #fwdContent:Ljava/lang/String;
    .end local v21           #reverseCont:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 848
    .local v13, exp:Ljava/lang/Exception;
    const-string v26, "HtmlComposerInputConnection"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "TAGVIVEK ERROR IN HTMLComposerIC, Msg= "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 879
    .end local v13           #exp:Ljava/lang/Exception;
    .restart local v5       #a:I
    .restart local v7       #b:I
    .restart local v23       #sp:Landroid/text/Spanned;
    :cond_14
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 880
    .restart local v17       #htmltext:Ljava/lang/String;
    if-eqz p3, :cond_15

    .line 881
    new-instance v24, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;-><init>(Landroid/webkit/HtmlComposerInputConnection;)V

    .line 882
    .local v24, tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->startOffset:I

    .line 883
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->endOffset:I

    .line 884
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v24

    iput-boolean v0, v1, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->isHighlightColor:Z

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .end local v24           #tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    :cond_15
    move-object/from16 v6, p1

    .line 888
    check-cast v6, Ljava/lang/String;

    goto/16 :goto_5

    .line 912
    .restart local v19       #m_selectionOffset:Landroid/webkit/WebView$SelectionOffset;
    :cond_16
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 913
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    goto/16 :goto_6

    .line 921
    :cond_17
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v26

    sub-int v26, v5, v26

    add-int v26, v26, p2

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    goto/16 :goto_7

    .line 966
    .end local v17           #htmltext:Ljava/lang/String;
    .end local v19           #m_selectionOffset:Landroid/webkit/WebView$SelectionOffset;
    .restart local v12       #diff:I
    .restart local v25       #tmpstr:Ljava/lang/String;
    :cond_18
    const/16 v26, -0x1

    move/from16 v0, v26

    if-ne v12, v0, :cond_19

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_19

    .line 968
    const-string v26, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    .line 969
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->charAt(I)C

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    .line 970
    const/16 v26, 0x0

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerInputConnection;->textToSpeech(II)V

    goto/16 :goto_8

    .line 975
    :cond_19
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/webkit/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    .line 977
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    .line 978
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerInputConnection;->textToSpeech(II)V

    goto/16 :goto_8

    .line 983
    :cond_1a
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/webkit/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 987
    .end local v12           #diff:I
    .end local v25           #tmpstr:Ljava/lang/String;
    :cond_1b
    const-string v26, "Predictive "

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerInputConnection;->getTTStext()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerInputConnection;->getTTSbeforeText()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerInputConnection;->getTTStext()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    sub-int v18, v26, v27

    .line 990
    .local v18, len:I
    const/16 v26, -0x1

    move/from16 v0, v18

    move/from16 v1, v26

    if-ne v0, v1, :cond_1c

    .line 991
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerInputConnection;->getTTStext()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    .line 992
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerInputConnection;->getTTSbeforeText()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v18

    .line 998
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/webkit/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    .line 999
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HtmlComposerInputConnection;->textToSpeech(II)V

    goto/16 :goto_0

    .line 996
    :cond_1c
    const/16 v18, 0x0

    goto :goto_9
.end method


# virtual methods
.method public ConvertBracket(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5
    .parameter "Text"

    .prologue
    const/16 v4, 0xbb

    const/16 v3, 0xab

    .line 704
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 705
    .local v1, sText:Ljava/lang/String;
    const/4 v0, 0x0

    .line 706
    .local v0, sCvtText:Ljava/lang/String;
    const-string/jumbo v2, "{"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 707
    const-string/jumbo v0, "}"

    .line 727
    :cond_0
    :goto_0
    return-object v0

    .line 708
    :cond_1
    const-string/jumbo v2, "}"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 709
    const-string/jumbo v0, "{"

    goto :goto_0

    .line 710
    :cond_2
    const-string v2, "["

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 711
    const-string v0, "]"

    goto :goto_0

    .line 712
    :cond_3
    const-string v2, "]"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 713
    const-string v0, "["

    goto :goto_0

    .line 714
    :cond_4
    const-string v2, "<"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 715
    const-string v0, ">"

    goto :goto_0

    .line 716
    :cond_5
    const-string v2, ">"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 717
    const-string v0, "<"

    goto :goto_0

    .line 718
    :cond_6
    const-string v2, "("

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 719
    const-string v0, ")"

    goto :goto_0

    .line 720
    :cond_7
    const-string v2, ")"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 721
    const-string v0, "("

    goto :goto_0

    .line 722
    :cond_8
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 723
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 724
    :cond_9
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 725
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public beginBatchEdit()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 191
    iput-boolean v3, p0, Landroid/webkit/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    .line 192
    iget v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    .line 193
    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginBatchEdit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/webkit/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return v3
.end method

.method public clearMetaKeyStates(I)Z
    .locals 2
    .parameter "arg0"

    .prologue
    .line 198
    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "clearMetaKeyStates"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 2
    .parameter "arg0"

    .prologue
    .line 203
    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "commitCompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 2
    .parameter "correctionInfo"

    .prologue
    .line 108
    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "HtmlComposerInputConnection commitCorrection return TRUE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 5
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 208
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 209
    const-string v2, "HtmlComposerInputConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "commitText "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v2, :cond_1

    .line 228
    :goto_0
    return v0

    .line 213
    :cond_1
    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->htmlLength()I

    move-result v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iget v3, v3, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    if-ne v2, v3, :cond_2

    .line 214
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x104064d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x104064e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 219
    :cond_2
    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2, v0}, Landroid/webkit/HtmlComposerView;->setComposingState(Z)V

    .line 221
    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getShowSingleCursorHandlerState()Z

    move-result v2

    if-ne v1, v2, :cond_3

    .line 222
    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->hideSingleCursorHandler()V

    .line 225
    :cond_3
    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/HtmlComposerInputConnection;->replaceTextToHtml(Ljava/lang/CharSequence;IZ)V

    .line 226
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->DoClearImageSelection()V

    move v0, v1

    .line 228
    goto :goto_0
.end method

.method public deleteSurroundingText(II)Z
    .locals 6
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 232
    const-string v3, "HtmlComposerInputConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteSurroundingText left "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rgh "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v3, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v3, :cond_0

    .line 261
    :goto_0
    return v1

    .line 236
    :cond_0
    const-string v0, ""

    .line 237
    .local v0, chng:Ljava/lang/String;
    if-ge p1, v2, :cond_3

    .line 238
    invoke-virtual {p0, p2, v1}, Landroid/webkit/HtmlComposerInputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    :goto_1
    iget-object v3, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3, p1, p2}, Landroid/webkit/HtmlComposerView;->deleteSurroundingText(II)V

    .line 246
    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    sub-int/2addr v3, p1

    iput v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 247
    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    if-gez v3, :cond_1

    .line 248
    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 250
    :cond_1
    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iput v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 251
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 254
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "\nX+\n+"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->getTTSbeforeText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->getTTStext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 256
    invoke-virtual {p0, v0}, Landroid/webkit/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/webkit/HtmlComposerInputConnection;->textToSpeech(II)V

    :cond_2
    move v1, v2

    .line 261
    goto :goto_0

    .line 239
    :cond_3
    if-ge p2, v2, :cond_4

    .line 240
    invoke-virtual {p0, p1, v1}, Landroid/webkit/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 242
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, v1}, Landroid/webkit/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p2, v1}, Landroid/webkit/HtmlComposerInputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public endBatchEdit()Z
    .locals 3

    .prologue
    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    .line 266
    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endBatchEdit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/webkit/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    .line 268
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method public finishComposingText()Z
    .locals 3

    .prologue
    .line 273
    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishComposingText  composingStart   composingEnd  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    .line 275
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method public getCursorCapsMode(I)I
    .locals 5
    .parameter "reqModes"

    .prologue
    .line 280
    const-string v3, "HtmlComposerInputConnection"

    const-string v4, "getCursorCapsMode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 282
    .local v1, arbOffset:I
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/webkit/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, textBeforCursor:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 285
    .local v0, a:I
    invoke-static {v2, v0, p1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v3

    return v3
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 8
    .parameter "request"
    .parameter "flags"

    .prologue
    const/4 v7, 0x0

    .line 290
    const-string v4, "HtmlComposerInputConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getExtractedText request.hintMaxChars "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "request.hintMaxLines "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxLines:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v4, :cond_1

    const/4 v1, 0x0

    .line 323
    :cond_0
    :goto_0
    return-object v1

    .line 293
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->beginBatchEdit()Z

    .line 294
    new-instance v1, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 295
    .local v1, outText:Landroid/view/inputmethod/ExtractedText;
    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {p0, v4, v7}, Landroid/webkit/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, textBeforCursor:Ljava/lang/String;
    const/16 v4, 0xf

    invoke-virtual {p0, v4, v7}, Landroid/webkit/HtmlComposerInputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, textAfetrCursor:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v7}, Landroid/webkit/HtmlComposerInputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 300
    iget-object v4, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-nez v4, :cond_2

    iget-object v4, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    const-string v5, ""

    if-ne v4, v5, :cond_3

    .line 301
    :cond_2
    iput v7, v1, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 302
    iput v7, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 303
    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iput v4, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 304
    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    iput v4, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 306
    const/4 v4, -0x1

    iput v4, v1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v4, v1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 310
    const-string v4, "HtmlComposerInputConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getExtractedText outText.selectionStart "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " outText.selectionEnd "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "outText.startOffset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_3
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->endBatchEdit()Z

    .line 314
    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    if-lez v4, :cond_4

    .line 315
    const-string v4, "HtmlComposerInputConnection"

    const-string v5, "getExtractedText return without update"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 319
    :cond_4
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 320
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v4}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 321
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v4, v7, v1}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    goto/16 :goto_0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 3
    .parameter "flags"

    .prologue
    .line 327
    const-string v1, "HtmlComposerInputConnection"

    const-string v2, "getSelectedText"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v1, :cond_1

    const-string v0, ""

    .line 330
    :cond_0
    :goto_0
    return-object v0

    .line 329
    :cond_1
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getSelectionSec()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, textSelected:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0
.end method

.method getSpanData(Landroid/text/Spanned;)V
    .locals 8
    .parameter "text"

    .prologue
    .line 669
    iget-object v6, p0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    .line 670
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v3

    .line 672
    .local v3, spanLen:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_3

    .line 673
    const-class v6, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v0, v3, v6}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    .line 674
    .local v2, next:I
    const-class v6, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v0, v2, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/CharacterStyle;

    .line 676
    .local v4, style:[Landroid/text/style/CharacterStyle;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    array-length v6, v4

    if-ge v1, v6, :cond_2

    .line 677
    aget-object v6, v4, v1

    instance-of v6, v6, Landroid/text/style/BackgroundColorSpan;

    if-eqz v6, :cond_0

    .line 678
    new-instance v5, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;

    invoke-direct {v5, p0}, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;-><init>(Landroid/webkit/HtmlComposerInputConnection;)V

    .line 679
    .local v5, tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    iput v0, v5, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->startOffset:I

    .line 680
    iput v2, v5, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->endOffset:I

    .line 686
    aget-object v6, v4, v1

    check-cast v6, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v6}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v6

    const/high16 v7, 0x100

    add-int/2addr v6, v7

    iput v6, v5, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->highLightColor:I

    .line 687
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->isHighlightColor:Z

    .line 688
    iget-object v6, p0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 691
    .end local v5           #tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    :cond_0
    aget-object v6, v4, v1

    instance-of v6, v6, Landroid/text/style/UnderlineSpan;

    if-eqz v6, :cond_1

    .line 692
    new-instance v5, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;

    invoke-direct {v5, p0}, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;-><init>(Landroid/webkit/HtmlComposerInputConnection;)V

    .line 693
    .restart local v5       #tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    iput v0, v5, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->startOffset:I

    .line 694
    iput v2, v5, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->endOffset:I

    .line 695
    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->isHighlightColor:Z

    .line 696
    iget-object v6, p0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 676
    .end local v5           #tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 672
    :cond_2
    move v0, v2

    goto :goto_0

    .line 700
    .end local v1           #j:I
    .end local v2           #next:I
    .end local v4           #style:[Landroid/text/style/CharacterStyle;
    :cond_3
    return-void
.end method

.method public getTTSbeforeText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1051
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->TTSbeforeText:Ljava/lang/String;

    return-object v0
.end method

.method public getTTStext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1011
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->TTStext:Ljava/lang/String;

    return-object v0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 8
    .parameter "n"
    .parameter "flags"

    .prologue
    .line 335
    iget-object v5, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v5, :cond_1

    const-string v4, ""

    .line 354
    :cond_0
    :goto_0
    return-object v4

    .line 336
    :cond_1
    iget-object v5, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    sget-object v6, Landroid/webkit/WebView$CursorDirection;->FORWARD:Landroid/webkit/WebView$CursorDirection;

    invoke-virtual {v5, p1, v6}, Landroid/webkit/HtmlComposerView;->getTextAroundCursor(ILandroid/webkit/WebView$CursorDirection;)Ljava/lang/String;

    move-result-object v4

    .line 337
    .local v4, retText:Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 338
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 339
    .local v0, arr:[C
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 340
    aget-char v1, v0, v2

    .line 341
    .local v1, chrVal:C
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 342
    const/16 v5, 0x20

    aput-char v5, v0, v2

    .line 339
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 345
    .end local v1           #chrVal:C
    :cond_3
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    .line 346
    .local v3, rText:Ljava/lang/String;
    move-object v4, v3

    .line 349
    .end local v0           #arr:[C
    .end local v2           #i:I
    .end local v3           #rText:Ljava/lang/String;
    :cond_4
    iget-boolean v5, p0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v5, :cond_5

    .line 350
    const-string v5, "HtmlComposerInputConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTextAfterCursor  + retText +  n "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " flags "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_5
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 354
    if-nez v4, :cond_0

    const-string v4, ""

    goto :goto_0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 11
    .parameter "n"
    .parameter "flags"

    .prologue
    .line 358
    iget-object v8, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v8, :cond_1

    const-string v6, ""

    .line 389
    :cond_0
    :goto_0
    return-object v6

    .line 359
    :cond_1
    iget-object v8, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    sget-object v9, Landroid/webkit/WebView$CursorDirection;->BACKWARD:Landroid/webkit/WebView$CursorDirection;

    invoke-virtual {v8, p1, v9}, Landroid/webkit/HtmlComposerView;->getTextAroundCursor(ILandroid/webkit/WebView$CursorDirection;)Ljava/lang/String;

    move-result-object v6

    .line 360
    .local v6, retText:Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 361
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 362
    .local v0, arr:[C
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v4, v8, :cond_3

    .line 363
    aget-char v1, v0, v4

    .line 364
    .local v1, chrVal:C
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 365
    const/16 v8, 0x20

    aput-char v8, v0, v4

    .line 362
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 368
    .end local v1           #chrVal:C
    :cond_3
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    .line 369
    .local v5, rText:Ljava/lang/String;
    move-object v6, v5

    .line 371
    .end local v0           #arr:[C
    .end local v4           #i:I
    .end local v5           #rText:Ljava/lang/String;
    :cond_4
    if-nez v6, :cond_5

    const-string v6, ""

    .line 372
    :cond_5
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, p1, :cond_8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    iget v9, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    if-ge v8, v9, :cond_8

    .line 373
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v2, p1, v8

    .line 374
    .local v2, diffLen:I
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 375
    .local v7, tempString:Ljava/lang/StringBuilder;
    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    const/4 v3, 0x1

    .local v3, extCnt:I
    :goto_2
    add-int/lit8 v8, v2, -0x1

    if-ge v3, v8, :cond_6

    .line 377
    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 379
    :cond_6
    const/4 v8, 0x1

    if-le v2, v8, :cond_7

    .line 380
    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 384
    .end local v2           #diffLen:I
    .end local v3           #extCnt:I
    .end local v7           #tempString:Ljava/lang/StringBuilder;
    :cond_8
    iget-boolean v8, p0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v8, :cond_9

    .line 385
    const-string v8, "HtmlComposerInputConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getTextBeforeCursor  + retText +  n "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " flags "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_9
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 389
    if-nez v6, :cond_0

    const-string v6, ""

    goto/16 :goto_0
.end method

.method public performContextMenuAction(I)Z
    .locals 4
    .parameter "id"

    .prologue
    .line 393
    const-string v1, "HtmlComposerInputConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performContextMenuAction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/4 v0, 0x0

    .line 395
    .local v0, retVal:Z
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 396
    :goto_0
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v1, :cond_1

    .line 401
    :goto_1
    return v0

    .line 395
    :cond_0
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1, p1}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v0

    goto :goto_0

    .line 398
    :cond_1
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 399
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 400
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    goto :goto_1
.end method

.method public performEditorAction(I)Z
    .locals 18
    .parameter "editorAction"

    .prologue
    .line 408
    const-string v1, "HtmlComposerInputConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "performEditorAction "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 464
    :goto_0
    return v1

    .line 417
    :cond_0
    const/4 v1, 0x5

    move/from16 v0, p1

    if-ne v0, v1, :cond_2

    .line 419
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const/16 v4, 0x82

    invoke-virtual {v1, v4}, Landroid/webkit/HtmlComposerView;->focusSearch(I)Landroid/view/View;

    move-result-object v17

    .line 420
    .local v17, v:Landroid/view/View;
    if-eqz v17, :cond_1

    .line 421
    const/16 v1, 0x82

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 422
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v4, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 426
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 428
    .end local v17           #v:Landroid/view/View;
    :cond_2
    const/4 v1, 0x7

    move/from16 v0, p1

    if-ne v0, v1, :cond_4

    .line 429
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const/16 v4, 0x21

    invoke-virtual {v1, v4}, Landroid/webkit/HtmlComposerView;->focusSearch(I)Landroid/view/View;

    move-result-object v17

    .line 430
    .restart local v17       #v:Landroid/view/View;
    if-eqz v17, :cond_3

    .line 431
    const/16 v1, 0x21

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 432
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v4, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 436
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 438
    .end local v17           #v:Landroid/view/View;
    :cond_4
    const/4 v1, 0x6

    move/from16 v0, p1

    if-ne v0, v1, :cond_6

    .line 439
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v16

    .line 440
    .local v16, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 441
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 443
    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    .line 446
    .end local v16           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 447
    .local v2, eventTime:J
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/16 v7, 0x42

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x16

    move-wide v4, v2

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 452
    new-instance v4, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v9, 0x1

    const/16 v10, 0x42

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x16

    move-wide v7, v2

    invoke-direct/range {v4 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkit/HtmlComposerInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 459
    move-object/from16 v0, p0

    iget v1, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 460
    move-object/from16 v0, p0

    iget v1, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    move-object/from16 v0, p0

    iput v1, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 461
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 462
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 464
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2
    .parameter "action"
    .parameter "data"

    .prologue
    .line 468
    const-string v0, "HtmlComposerInputConnection"

    const-string/jumbo v1, "performPrivateCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const/4 v0, 0x1

    return v0
.end method

.method public removeComposingSpan()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 119
    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 120
    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 121
    const-string v0, "HtmlComposerInputConnection"

    const-string/jumbo v1, "removeComposingSpan called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setComposingState(Z)V

    .line 124
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    goto :goto_0
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    .line 473
    const/4 v0, 0x0

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    .line 477
    const-string v9, "HtmlComposerInputConnection"

    const-string/jumbo v10, "sendKeyEvent"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v9, :cond_0

    const/4 v9, 0x0

    .line 635
    :goto_0
    return v9

    .line 480
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_3

    const/4 v2, 0x1

    .line 481
    .local v2, down:Z
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 483
    .local v4, keyCode:I
    iget-boolean v9, p0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v9, :cond_1

    .line 484
    const-string v9, "HtmlComposerInputConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sendKeyEvent"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_1
    const/16 v9, 0x3d

    if-ne v9, v4, :cond_4

    .line 514
    if-eqz v2, :cond_2

    .line 515
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v10, "InsertText"

    const-string v11, "    "

    invoke-virtual {v9, v10, v11}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 517
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    .line 519
    :cond_2
    const/4 v9, 0x1

    goto :goto_0

    .line 480
    .end local v2           #down:Z
    .end local v4           #keyCode:I
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 521
    .restart local v2       #down:Z
    .restart local v4       #keyCode:I
    :cond_4
    const/16 v9, 0x42

    if-ne v4, v9, :cond_6

    .line 522
    if-eqz v2, :cond_5

    .line 523
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v10, "InsertText"

    const-string v11, "\n"

    invoke-virtual {v9, v10, v11}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    .line 525
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 527
    :cond_5
    const/4 v9, 0x1

    goto :goto_0

    .line 529
    :cond_6
    const/16 v9, 0x43

    if-ne v4, v9, :cond_11

    .line 530
    if-eqz v2, :cond_e

    .line 532
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkit/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v8

    .line 533
    .local v8, tmp:Ljava/lang/String;
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Landroid/webkit/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 534
    .local v1, delStr:Ljava/lang/String;
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkit/HtmlComposerView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebViewCore;->getSelectedText()Ljava/lang/String;

    move-result-object v7

    .line 535
    .local v7, textSelected:Ljava/lang/String;
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkit/HtmlComposerView;->getBodyHTML()Ljava/lang/String;

    move-result-object v5

    .line 537
    .local v5, prevHtml:Ljava/lang/String;
    iget-boolean v9, p0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v9, :cond_7

    .line 538
    const-string v9, "HtmlComposerInputConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "full text"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "selected  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_7
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkit/HtmlComposerView;->hideSingleCursorHandler()V

    .line 546
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v10, ""

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 547
    iget v9, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 548
    iget v9, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    if-gez v9, :cond_f

    const/4 v9, 0x0

    :goto_2
    iput v9, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 549
    iget v9, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iput v9, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 550
    iget v9, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_8

    iget v9, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_8

    .line 551
    iget v9, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 552
    iget v9, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    iget v10, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    if-ne v9, v10, :cond_8

    .line 553
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    .line 555
    :cond_8
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 556
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkit/HtmlComposerView;->DoClearImageSelection()V

    .line 558
    iget-boolean v9, p0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v9, :cond_9

    .line 559
    const-string v9, "HtmlComposerInputConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "before text  here  1 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/webkit/HtmlComposerInputConnection;->TTSbeforeText:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_9
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 564
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkit/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v6

    .line 565
    .local v6, s:Ljava/lang/String;
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkit/HtmlComposerView;->getBodyHTML()Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, aftHtml:Ljava/lang/String;
    iget-boolean v9, p0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v9, :cond_a

    .line 569
    const-string v9, "HtmlComposerInputConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const-string v9, "HtmlComposerInputConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_a
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 578
    if-eqz v7, :cond_10

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_10

    .line 580
    move-object v1, v7

    .line 586
    :cond_b
    :goto_3
    const-string v9, ""

    invoke-virtual {p0, v9}, Landroid/webkit/HtmlComposerInputConnection;->setTTStext(Ljava/lang/String;)V

    .line 587
    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    .line 589
    iget-boolean v9, p0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v9, :cond_c

    .line 590
    const-string v9, "HtmlComposerInputConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "before text  here 2  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/webkit/HtmlComposerInputConnection;->TTSbeforeText:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v11}, Landroid/webkit/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_c
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_d

    const-string v9, "\n"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 595
    const/4 v9, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p0, v9, v10}, Landroid/webkit/HtmlComposerInputConnection;->textToSpeech(II)V

    .line 600
    :cond_d
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/webkit/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    .line 602
    .end local v0           #aftHtml:Ljava/lang/String;
    .end local v1           #delStr:Ljava/lang/String;
    .end local v5           #prevHtml:Ljava/lang/String;
    .end local v6           #s:Ljava/lang/String;
    .end local v7           #textSelected:Ljava/lang/String;
    .end local v8           #tmp:Ljava/lang/String;
    :cond_e
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 548
    .restart local v1       #delStr:Ljava/lang/String;
    .restart local v5       #prevHtml:Ljava/lang/String;
    .restart local v7       #textSelected:Ljava/lang/String;
    .restart local v8       #tmp:Ljava/lang/String;
    :cond_f
    iget v9, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    goto/16 :goto_2

    .line 582
    .restart local v0       #aftHtml:Ljava/lang/String;
    .restart local v6       #s:Ljava/lang/String;
    :cond_10
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 584
    const-string v1, "image"

    goto :goto_3

    .line 604
    .end local v0           #aftHtml:Ljava/lang/String;
    .end local v1           #delStr:Ljava/lang/String;
    .end local v5           #prevHtml:Ljava/lang/String;
    .end local v6           #s:Ljava/lang/String;
    .end local v7           #textSelected:Ljava/lang/String;
    .end local v8           #tmp:Ljava/lang/String;
    :cond_11
    const/16 v9, 0x3b

    if-eq v4, v9, :cond_12

    const/16 v9, 0x3c

    if-ne v4, v9, :cond_15

    .line 606
    :cond_12
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    .line 626
    :cond_13
    :goto_4
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    .line 627
    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkit/HtmlComposerView;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 628
    .local v3, h:Landroid/os/Handler;
    if-eqz v3, :cond_14

    .line 630
    const/16 v9, 0x3f3

    invoke-virtual {v3, v9, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 635
    :cond_14
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 607
    .end local v3           #h:Landroid/os/Handler;
    :cond_15
    const/16 v9, 0x39

    if-ne v4, v9, :cond_13

    .line 608
    if-eqz v2, :cond_16

    .line 609
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mALTKeyIsPressed:Z

    goto :goto_4

    .line 611
    :cond_16
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/webkit/HtmlComposerInputConnection;->mALTKeyIsPressed:Z

    goto :goto_4
.end method

.method public setComposingRegion(II)Z
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1060
    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setComposingRegion start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1066
    :goto_0
    return v0

    .line 1062
    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/HtmlComposerView;->setComposingRegion(II)V

    .line 1063
    iput p1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 1064
    iput p2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 1065
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 1066
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 5
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 639
    iput-object p1, p0, Landroid/webkit/HtmlComposerInputConnection;->currCompText:Ljava/lang/CharSequence;

    .line 641
    iget-boolean v2, p0, Landroid/webkit/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 642
    const-string v2, "HtmlComposerInputConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setComposingText "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_0
    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-eqz v2, :cond_1

    if-nez p1, :cond_2

    .line 664
    :cond_1
    :goto_0
    return v0

    .line 646
    :cond_2
    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->htmlLength()I

    move-result v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iget v3, v3, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    if-ne v2, v3, :cond_3

    .line 647
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x104064d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x104064e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 652
    :cond_3
    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getShowSingleCursorHandlerState()Z

    move-result v2

    if-ne v1, v2, :cond_4

    .line 653
    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->hideSingleCursorHandler()V

    .line 656
    :cond_4
    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->currCompText:Ljava/lang/CharSequence;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 657
    iget-object v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2, v0}, Landroid/webkit/HtmlComposerView;->setComposingState(Z)V

    .line 661
    :goto_1
    invoke-direct {p0, p1, p2, v1}, Landroid/webkit/HtmlComposerInputConnection;->replaceTextToHtml(Ljava/lang/CharSequence;IZ)V

    .line 662
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->DoClearImageSelection()V

    move v0, v1

    .line 664
    goto :goto_0

    .line 659
    :cond_5
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setComposingState(Z)V

    goto :goto_1
.end method

.method public setSelection(II)Z
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v0, 0x1

    .line 1070
    const-string v1, "HtmlComposerInputConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSelection start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " end "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 1079
    :goto_0
    return v0

    .line 1072
    :cond_0
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mALTKeyIsPressed:Z

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 1073
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->moveCursorBegining()V

    .line 1076
    :cond_1
    iput p1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 1077
    iput p2, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 1078
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    goto :goto_0
.end method

.method public setTTSbeforeText(Ljava/lang/String;)V
    .locals 0
    .parameter "tTSbeforeText"

    .prologue
    .line 1055
    iput-object p1, p0, Landroid/webkit/HtmlComposerInputConnection;->TTSbeforeText:Ljava/lang/String;

    .line 1056
    return-void
.end method

.method public setTTSstart(I)V
    .locals 0
    .parameter "start"

    .prologue
    .line 1021
    iput p1, p0, Landroid/webkit/HtmlComposerInputConnection;->TTSstart:I

    .line 1023
    return-void
.end method

.method public setTTStext(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 1016
    iput-object p1, p0, Landroid/webkit/HtmlComposerInputConnection;->TTStext:Ljava/lang/String;

    .line 1018
    return-void
.end method

.method public setTargetNull()V
    .locals 2

    .prologue
    .line 113
    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "HtmlComposerInputConnection setTargetNull()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 115
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    .line 116
    return-void
.end method

.method public textToSpeech(II)V
    .locals 4
    .parameter "add"
    .parameter "remove"

    .prologue
    .line 1027
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1028
    const/16 v1, 0x10

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1030
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    const-string v1, "HtmlComposerInputConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "textToSpeech start text= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->getTTStext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " before text="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->getTTSbeforeText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " add "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1032
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 1033
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 1035
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->TTSbeforeText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    if-nez p1, :cond_2

    .line 1037
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->TTSbeforeText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 1038
    const-string v1, ""

    iput-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->TTSbeforeText:Ljava/lang/String;

    .line 1044
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1, v0}, Landroid/webkit/HtmlComposerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1048
    .end local v0           #event:Landroid/view/accessibility/AccessibilityEvent;
    :cond_1
    return-void

    .line 1040
    .restart local v0       #event:Landroid/view/accessibility/AccessibilityEvent;
    :cond_2
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->TTSbeforeText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    if-eqz p1, :cond_0

    .line 1042
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->TTSbeforeText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateInputMethodSelection()V
    .locals 6

    .prologue
    .line 143
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {v1, v2, v3}, Landroid/webkit/HtmlComposerView;->updateIMSelectionToEditor(II)V

    .line 147
    :cond_0
    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    if-lez v1, :cond_1

    .line 149
    const-string v1, "HtmlComposerInputConnection"

    const-string/jumbo v2, "return without updateInputMethodSelection as  bBeginBatchEdit is TRUE.........."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_0
    return-void

    .line 152
    :cond_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 153
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    iget v5, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 155
    const-string v1, "HtmlComposerInputConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateInputMethodSelection curSelStart curSelEnd composingStart, composingEnd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_2
    const-string v1, "HtmlComposerInputConnection"

    const-string/jumbo v2, "updateInputMethodSelection exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateInputMethodSelectionWithAbsolute()V
    .locals 4

    .prologue
    .line 163
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v0

    .line 164
    .local v0, selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    iget v1, v0, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 165
    iget v1, v0, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 166
    const-string v1, "HtmlComposerInputConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateInputMethodSelection curSelStart curSelEnd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 168
    return-void
.end method

.method public updateInputMethodSelectionWithRandom()V
    .locals 6

    .prologue
    .line 171
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 172
    .local v1, randm:Ljava/util/Random;
    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 173
    .local v0, randNum:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v2

    .line 174
    .local v2, selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    iget v3, v2, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    add-int/2addr v3, v0

    iput v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 175
    iget v3, v2, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    add-int/2addr v3, v0

    iput v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 176
    const-string v3, "HtmlComposerInputConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateInputMethodSelectionWithRandom curSelStart curSelEnd "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    .line 178
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 179
    return-void
.end method
