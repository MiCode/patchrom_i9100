.class Landroid/widget/TextView$SuggestionsPopupWindow;
.super Landroid/widget/TextView$PinnedPopupWindow;
.source "TextView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionsPopupWindow"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionSpanComparator;,
        Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionAdapter;,
        Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;,
        Landroid/widget/TextView$SuggestionsPopupWindow$CustomPopupWindow;
    }
.end annotation


# static fields
.field private static final ADD_TO_DICTIONARY:I = -0x1

.field private static final DELETE_TEXT:I = -0x2

.field private static final MAX_NUMBER_SUGGESTIONS:I = 0x5


# instance fields
.field private mCursorWasVisibleBeforeSuggestions:Z

.field private mIsShowingUp:Z

.field private mNumberOfSuggestions:I

.field private final mSpansLengths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/text/style/SuggestionSpan;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionInfos:[Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;

.field private final mSuggestionSpanComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/text/style/SuggestionSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionsAdapter:Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionAdapter;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 2
    .parameter

    .prologue
    .line 9900
    iput-object p1, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Landroid/widget/TextView$PinnedPopupWindow;-><init>(Landroid/widget/TextView;)V

    .line 9874
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->mIsShowingUp:Z

    .line 9901
    #getter for: Landroid/widget/TextView;->mCursorVisible:Z
    invoke-static {p1}, Landroid/widget/TextView;->access$3200(Landroid/widget/TextView;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->mCursorWasVisibleBeforeSuggestions:Z

    .line 9902
    new-instance v0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionSpanComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionSpanComparator;-><init>(Landroid/widget/TextView$SuggestionsPopupWindow;Landroid/widget/TextView$1;)V

    iput-object v0, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->mSuggestionSpanComparator:Ljava/util/Comparator;

    .line 9903
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->mSpansLengths:Ljava/util/HashMap;

    .line 9904
    return-void
.end method

.method static synthetic access$3100(Landroid/widget/TextView$SuggestionsPopupWindow;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 9867
    iget-boolean v0, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->mCursorWasVisibleBeforeSuggestions:Z

    return v0
.end method

.method static synthetic access$3900(Landroid/widget/TextView$SuggestionsPopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 9867
    iget v0, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    return v0
.end method

.method static synthetic access$4000(Landroid/widget/TextView$SuggestionsPopupWindow;)[Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9867
    iget-object v0, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;

    return-object v0
.end method

.method static synthetic access$4200(Landroid/widget/TextView$SuggestionsPopupWindow;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9867
    iget-object v0, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->mSpansLengths:Ljava/util/HashMap;

    return-object v0
.end method

.method private getSuggestionSpans()[Landroid/text/style/SuggestionSpan;
    .locals 11

    .prologue
    .line 10017
    iget-object v9, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 10018
    .local v4, pos:I
    iget-object v9, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v9}, Landroid/widget/TextView;->access$600(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    .line 10019
    .local v5, spannable:Landroid/text/Spannable;
    const-class v9, Landroid/text/style/SuggestionSpan;

    invoke-interface {v5, v4, v4, v9}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/SuggestionSpan;

    .line 10021
    .local v8, suggestionSpans:[Landroid/text/style/SuggestionSpan;
    iget-object v9, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->mSpansLengths:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 10022
    move-object v0, v8

    .local v0, arr$:[Landroid/text/style/SuggestionSpan;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v7, v0, v2

    .line 10023
    .local v7, suggestionSpan:Landroid/text/style/SuggestionSpan;
    invoke-interface {v5, v7}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 10024
    .local v6, start:I
    invoke-interface {v5, v7}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 10025
    .local v1, end:I
    iget-object v9, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->mSpansLengths:Ljava/util/HashMap;

    sub-int v10, v1, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10022
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10030
    .end local v1           #end:I
    .end local v6           #start:I
    .end local v7           #suggestionSpan:Landroid/text/style/SuggestionSpan;
    :cond_0
    iget-object v9, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->mSuggestionSpanComparator:Ljava/util/Comparator;

    invoke-static {v8, v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 10031
    return-object v8
.end method

.method private highlightTextDifferences(Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;II)V
    .locals 8
    .parameter "suggestionInfo"
    .parameter "unionStart"
    .parameter "unionEnd"

    .prologue
    const/4 v7, 0x0

    .line 10192
    iget-object v3, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/widget/TextView;->access$600(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    .line 10193
    .local v2, text:Landroid/text/Spannable;
    iget-object v3, p1, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    invoke-interface {v2, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 10194
    .local v1, spanStart:I
    iget-object v3, p1, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    invoke-interface {v2, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 10197
    .local v0, spanEnd:I
    sub-int v3, v1, p2

    iput v3, p1, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->suggestionStart:I

    .line 10198
    iget v3, p1, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->suggestionStart:I

    iget-object v4, p1, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p1, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->suggestionEnd:I

    .line 10201
    iget-object v3, p1, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    iget-object v4, p1, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->highlightSpan:Landroid/text/style/TextAppearanceSpan;

    iget-object v5, p1, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 10205
    iget-object v3, p1, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/widget/TextView;->access$600(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 10206
    iget-object v3, p1, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/widget/TextView;->access$600(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 10207
    return-void
.end method

.method private updateSuggestions()V
    .locals 27

    .prologue
    .line 10099
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v22, v0

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static/range {v22 .. v22}, Landroid/widget/TextView;->access$600(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v15

    check-cast v15, Landroid/text/Spannable;

    .line 10100
    .local v15, spannable:Landroid/text/Spannable;
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView$SuggestionsPopupWindow;->getSuggestionSpans()[Landroid/text/style/SuggestionSpan;

    move-result-object v19

    .line 10102
    .local v19, suggestionSpans:[Landroid/text/style/SuggestionSpan;
    move-object/from16 v0, v19

    array-length v7, v0

    .line 10104
    .local v7, nbSpans:I
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    .line 10105
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v22, v0

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static/range {v22 .. v22}, Landroid/widget/TextView;->access$600(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result v14

    .line 10106
    .local v14, spanUnionStart:I
    const/4 v13, 0x0

    .line 10108
    .local v13, spanUnionEnd:I
    const/4 v5, 0x0

    .line 10109
    .local v5, misspelledSpan:Landroid/text/style/SuggestionSpan;
    const/16 v21, 0x0

    .line 10111
    .local v21, underlineColor:I
    const/4 v11, 0x0

    .local v11, spanIndex:I
    :goto_0
    if-ge v11, v7, :cond_4

    .line 10112
    aget-object v18, v19, v11

    .line 10113
    .local v18, suggestionSpan:Landroid/text/style/SuggestionSpan;
    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    .line 10114
    .local v12, spanStart:I
    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    .line 10115
    .local v10, spanEnd:I
    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 10116
    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 10118
    invoke-virtual/range {v18 .. v18}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v22

    and-int/lit8 v22, v22, 0x2

    if-eqz v22, :cond_0

    .line 10119
    move-object/from16 v5, v18

    .line 10123
    :cond_0
    if-nez v11, :cond_1

    invoke-virtual/range {v18 .. v18}, Landroid/text/style/SuggestionSpan;->getUnderlineColor()I

    move-result v21

    .line 10125
    :cond_1
    invoke-virtual/range {v18 .. v18}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v20

    .line 10126
    .local v20, suggestions:[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v8, v0

    .line 10127
    .local v8, nbSuggestions:I
    const/16 v16, 0x0

    .local v16, suggestionIndex:I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v8, :cond_2

    .line 10128
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v23, v0

    aget-object v17, v22, v23

    .line 10129
    .local v17, suggestionInfo:Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    .line 10130
    move/from16 v0, v16

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    .line 10131
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v24

    aget-object v25, v20, v16

    invoke-virtual/range {v22 .. v25}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 10134
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    .line 10135
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v22, v0

    const/16 v23, 0x5

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 10137
    move v11, v7

    .line 10111
    .end local v17           #suggestionInfo:Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 10127
    .restart local v17       #suggestionInfo:Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 10143
    .end local v8           #nbSuggestions:I
    .end local v10           #spanEnd:I
    .end local v12           #spanStart:I
    .end local v16           #suggestionIndex:I
    .end local v17           #suggestionInfo:Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;
    .end local v18           #suggestionSpan:Landroid/text/style/SuggestionSpan;
    .end local v20           #suggestions:[Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v3, v0, :cond_5

    .line 10144
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v22, v0

    aget-object v22, v22, v3

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v14, v13}, Landroid/widget/TextView$SuggestionsPopupWindow;->highlightTextDifferences(Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;II)V

    .line 10143
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 10148
    :cond_5
    if-eqz v5, :cond_6

    .line 10149
    invoke-interface {v15, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 10150
    .local v6, misspelledStart:I
    invoke-interface {v15, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 10151
    .local v4, misspelledEnd:I
    if-ltz v6, :cond_6

    if-le v4, v6, :cond_6

    .line 10152
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v23, v0

    aget-object v17, v22, v23

    .line 10153
    .restart local v17       #suggestionInfo:Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;
    move-object/from16 v0, v17

    iput-object v5, v0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    .line 10154
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    .line 10155
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v25

    const v26, 0x1040447

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v22 .. v25}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 10157
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->highlightSpan:Landroid/text/style/TextAppearanceSpan;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x21

    invoke-virtual/range {v22 .. v26}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 10160
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    .line 10165
    .end local v4           #misspelledEnd:I
    .end local v6           #misspelledStart:I
    .end local v17           #suggestionInfo:Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v23, v0

    aget-object v17, v22, v23

    .line 10166
    .restart local v17       #suggestionInfo:Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    .line 10167
    const/16 v22, -0x2

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    .line 10168
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v25

    const v26, 0x1040448

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v22 .. v25}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 10170
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->highlightSpan:Landroid/text/style/TextAppearanceSpan;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x21

    invoke-virtual/range {v22 .. v26}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 10172
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    .line 10174
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v22, v0

    #getter for: Landroid/widget/TextView;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;
    invoke-static/range {v22 .. v22}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Landroid/text/style/SuggestionRangeSpan;

    move-result-object v22

    if-nez v22, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v22, v0

    new-instance v23, Landroid/text/style/SuggestionRangeSpan;

    invoke-direct/range {v23 .. v23}, Landroid/text/style/SuggestionRangeSpan;-><init>()V

    #setter for: Landroid/widget/TextView;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;
    invoke-static/range {v22 .. v23}, Landroid/widget/TextView;->access$3002(Landroid/widget/TextView;Landroid/text/style/SuggestionRangeSpan;)Landroid/text/style/SuggestionRangeSpan;

    .line 10175
    :cond_7
    if-nez v21, :cond_8

    .line 10177
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v22, v0

    #getter for: Landroid/widget/TextView;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;
    invoke-static/range {v22 .. v22}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Landroid/text/style/SuggestionRangeSpan;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v23, v0

    #getter for: Landroid/widget/TextView;->mHighlightColor:I
    invoke-static/range {v23 .. v23}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/text/style/SuggestionRangeSpan;->setBackgroundColor(I)V

    .line 10184
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v22, v0

    #getter for: Landroid/widget/TextView;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;
    invoke-static/range {v22 .. v22}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Landroid/text/style/SuggestionRangeSpan;

    move-result-object v22

    const/16 v23, 0x21

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v15, v0, v14, v13, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 10187
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->mSuggestionsAdapter:Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionAdapter;->notifyDataSetChanged()V

    .line 10188
    return-void

    .line 10179
    :cond_8
    const v2, 0x3ecccccd

    .line 10180
    .local v2, BACKGROUND_TRANSPARENCY:F
    invoke-static/range {v21 .. v21}, Landroid/graphics/Color;->alpha(I)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const v23, 0x3ecccccd

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v9, v0

    .line 10181
    .local v9, newAlpha:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v22, v0

    #getter for: Landroid/widget/TextView;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;
    invoke-static/range {v22 .. v22}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Landroid/text/style/SuggestionRangeSpan;

    move-result-object v22

    const v23, 0xffffff

    and-int v23, v23, v21

    shl-int/lit8 v24, v9, 0x18

    add-int v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/text/style/SuggestionRangeSpan;->setBackgroundColor(I)V

    goto :goto_3
.end method


# virtual methods
.method protected clipVertically(I)I
    .locals 3
    .parameter "positionY"

    .prologue
    .line 10088
    iget-object v2, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    .line 10089
    .local v1, height:I
    iget-object v2, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/widget/TextView;->access$4400(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 10090
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v2, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method protected createPopupWindow()V
    .locals 3

    .prologue
    .line 9908
    new-instance v0, Landroid/widget/TextView$SuggestionsPopupWindow$CustomPopupWindow;

    iget-object v1, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/TextView;->access$3400(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1010373

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/TextView$SuggestionsPopupWindow$CustomPopupWindow;-><init>(Landroid/widget/TextView$SuggestionsPopupWindow;Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 9910
    iget-object v0, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 9911
    iget-object v0, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 9912
    iget-object v0, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 9913
    return-void
.end method

.method protected getTextOffset()I
    .locals 1

    .prologue
    .line 10078
    iget-object v0, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method protected getVerticalLocalPosition(I)I
    .locals 1
    .parameter "line"

    .prologue
    .line 10083
    iget-object v0, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 0

    .prologue
    .line 10095
    invoke-super {p0}, Landroid/widget/TextView$PinnedPopupWindow;->hide()V

    .line 10096
    return-void
.end method

.method protected initContentView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 9917
    new-instance v1, Landroid/widget/ListView;

    iget-object v2, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 9918
    .local v1, listView:Landroid/widget/ListView;
    new-instance v2, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionAdapter;

    invoke-direct {v2, p0, v4}, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionAdapter;-><init>(Landroid/widget/TextView$SuggestionsPopupWindow;Landroid/widget/TextView$1;)V

    iput-object v2, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->mSuggestionsAdapter:Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionAdapter;

    .line 9919
    iget-object v2, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->mSuggestionsAdapter:Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 9920
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 9921
    iput-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 9924
    const/4 v2, 0x7

    new-array v2, v2, [Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;

    iput-object v2, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;

    .line 9925
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 9926
    iget-object v2, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;

    new-instance v3, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;

    invoke-direct {v3, p0, v4}, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;-><init>(Landroid/widget/TextView$SuggestionsPopupWindow;Landroid/widget/TextView$1;)V

    aput-object v3, v2, v0

    .line 9925
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9928
    :cond_0
    return-void
.end method

.method public isShowingUp()Z
    .locals 1

    .prologue
    .line 9931
    iget-boolean v0, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->mIsShowingUp:Z

    return v0
.end method

.method protected measureContent()V
    .locals 9

    .prologue
    const/high16 v8, -0x8000

    .line 10047
    iget-object v7, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/widget/TextView;->access$4300(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 10048
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 10050
    .local v1, horizontalMeasure:I
    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 10053
    .local v4, verticalMeasure:I
    const/4 v6, 0x0

    .line 10054
    .local v6, width:I
    const/4 v5, 0x0

    .line 10055
    .local v5, view:Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v7, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    if-ge v2, v7, :cond_0

    .line 10056
    iget-object v7, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->mSuggestionsAdapter:Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionAdapter;

    iget-object v8, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7, v2, v5, v8}, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 10057
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, -0x2

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 10058
    invoke-virtual {v5, v1, v4}, Landroid/view/View;->measure(II)V

    .line 10059
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 10055
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10063
    :cond_0
    iget-object v7, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const/high16 v8, 0x4000

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v7, v8, v4}, Landroid/view/ViewGroup;->measure(II)V

    .line 10067
    iget-object v7, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 10068
    .local v3, popupBackground:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_2

    .line 10069
    iget-object v7, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v7, v7, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    if-nez v7, :cond_1

    iget-object v7, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v7, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    .line 10070
    :cond_1
    iget-object v7, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v7, v7, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 10071
    iget-object v7, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v7, v7, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v8, v8, Landroid/widget/TextView;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 10073
    :cond_2
    iget-object v7, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 10074
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 30
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 10211
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static/range {v25 .. v25}, Landroid/widget/TextView;->access$600(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Editable;

    .line 10212
    .local v2, editable:Landroid/text/Editable;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v25, v0

    aget-object v16, v25, p3

    .line 10214
    .local v16, suggestionInfo:Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    move/from16 v25, v0

    const/16 v26, -0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    .line 10215
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/TextView;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;
    invoke-static/range {v25 .. v25}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Landroid/text/style/SuggestionRangeSpan;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v2, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    .line 10216
    .local v13, spanUnionStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/TextView;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;
    invoke-static/range {v25 .. v25}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)Landroid/text/style/SuggestionRangeSpan;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v2, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    .line 10217
    .local v12, spanUnionEnd:I
    if-ltz v13, :cond_2

    if-le v12, v13, :cond_2

    .line 10219
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v25

    move/from16 v0, v25

    if-ge v12, v0, :cond_1

    invoke-interface {v2, v12}, Landroid/text/Editable;->charAt(I)C

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v25

    if-eqz v25, :cond_1

    if-eqz v13, :cond_0

    add-int/lit8 v25, v13, -0x1

    move/from16 v0, v25

    invoke-interface {v2, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 10223
    :cond_0
    add-int/lit8 v12, v12, 0x1

    .line 10225
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13, v12}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 10227
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$SuggestionsPopupWindow;->hide()V

    .line 10312
    .end local v12           #spanUnionEnd:I
    .end local v13           #spanUnionStart:I
    :goto_0
    return-void

    .line 10231
    :cond_3
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v2, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 10232
    .local v11, spanStart:I
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v2, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    .line 10233
    .local v10, spanEnd:I
    if-ltz v11, :cond_4

    if-gt v10, v11, :cond_5

    .line 10235
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$SuggestionsPopupWindow;->hide()V

    goto :goto_0

    .line 10238
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v25, v0

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static/range {v25 .. v25}, Landroid/widget/TextView;->access$600(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 10240
    .local v9, originalText:Ljava/lang/String;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    .line 10241
    new-instance v5, Landroid/content/Intent;

    const-string v25, "com.android.settings.USER_DICTIONARY_INSERT"

    move-object/from16 v0, v25

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10242
    .local v5, intent:Landroid/content/Intent;
    const-string/jumbo v25, "word"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10243
    const-string/jumbo v25, "locale"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10244
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v25

    const/high16 v26, 0x1000

    or-int v25, v25, v26

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 10245
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 10248
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v2, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 10249
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    #calls: Landroid/widget/TextView;->updateSpellCheckSpans(IIZ)V
    invoke-static {v0, v11, v10, v1}, Landroid/widget/TextView;->access$4500(Landroid/widget/TextView;IIZ)V

    .line 10311
    .end local v5           #intent:Landroid/content/Intent;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView$SuggestionsPopupWindow;->hide()V

    goto/16 :goto_0

    .line 10252
    :cond_6
    const-class v25, Landroid/text/style/SuggestionSpan;

    move-object/from16 v0, v25

    invoke-interface {v2, v11, v10, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Landroid/text/style/SuggestionSpan;

    .line 10254
    .local v19, suggestionSpans:[Landroid/text/style/SuggestionSpan;
    move-object/from16 v0, v19

    array-length v6, v0

    .line 10255
    .local v6, length:I
    new-array v0, v6, [I

    move-object/from16 v22, v0

    .line 10256
    .local v22, suggestionSpansStarts:[I
    new-array v0, v6, [I

    move-object/from16 v20, v0

    .line 10257
    .local v20, suggestionSpansEnds:[I
    new-array v0, v6, [I

    move-object/from16 v21, v0

    .line 10258
    .local v21, suggestionSpansFlags:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v6, :cond_8

    .line 10259
    aget-object v17, v19, v3

    .line 10260
    .local v17, suggestionSpan:Landroid/text/style/SuggestionSpan;
    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v25

    aput v25, v22, v3

    .line 10261
    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v25

    aput v25, v20, v3

    .line 10262
    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v25

    aput v25, v21, v3

    .line 10265
    invoke-virtual/range {v17 .. v17}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v18

    .line 10266
    .local v18, suggestionSpanFlags:I
    and-int/lit8 v25, v18, 0x2

    if-lez v25, :cond_7

    .line 10267
    and-int/lit8 v18, v18, -0x3

    .line 10268
    and-int/lit8 v18, v18, -0x2

    .line 10269
    invoke-virtual/range {v17 .. v18}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    .line 10258
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 10273
    .end local v17           #suggestionSpan:Landroid/text/style/SuggestionSpan;
    .end local v18           #suggestionSpanFlags:I
    :cond_8
    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->suggestionStart:I

    move/from16 v23, v0

    .line 10274
    .local v23, suggestionStart:I
    move-object/from16 v0, v16

    iget v15, v0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->suggestionEnd:I

    .line 10275
    .local v15, suggestionEnd:I
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1, v15}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 10277
    .local v14, suggestion:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v11, v10, v14}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 10280
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/text/style/SuggestionSpan;->getNotificationTargetClassName()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_9

    .line 10282
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    .line 10283
    .local v4, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v4, :cond_9

    .line 10284
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    move-object/from16 v25, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    move/from16 v26, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v4, v0, v9, v1}, Landroid/view/inputmethod/InputMethodManager;->notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)V

    .line 10290
    .end local v4           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_9
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v24

    .line 10291
    .local v24, suggestions:[Ljava/lang/String;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    move/from16 v25, v0

    aput-object v9, v24, v25

    .line 10294
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v25

    sub-int v26, v10, v11

    sub-int v7, v25, v26

    .line 10295
    .local v7, lengthDifference:I
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v6, :cond_b

    .line 10299
    aget v25, v22, v3

    move/from16 v0, v25

    if-gt v0, v11, :cond_a

    aget v25, v20, v3

    move/from16 v0, v25

    if-lt v0, v10, :cond_a

    .line 10301
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v25, v0

    aget-object v26, v19, v3

    aget v27, v22, v3

    aget v28, v20, v3

    add-int v28, v28, v7

    aget v29, v21, v3

    invoke-virtual/range {v25 .. v29}, Landroid/widget/TextView;->setSpan_internal(Ljava/lang/Object;III)V

    .line 10295
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 10307
    :cond_b
    add-int v8, v10, v7

    .line 10308
    .local v8, newCursorPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v8}, Landroid/widget/TextView;->setCursorPosition_internal(II)V

    goto/16 :goto_1
.end method

.method public onParentLostFocus()V
    .locals 1

    .prologue
    .line 9935
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->mIsShowingUp:Z

    .line 9936
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 10036
    iget-object v0, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/widget/TextView;->access$600(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_0

    .line 10043
    :goto_0
    return-void

    .line 10038
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView$SuggestionsPopupWindow;->updateSuggestions()V

    .line 10039
    iget-object v0, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mCursorVisible:Z
    invoke-static {v0}, Landroid/widget/TextView;->access$3200(Landroid/widget/TextView;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->mCursorWasVisibleBeforeSuggestions:Z

    .line 10040
    iget-object v0, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->this$0:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 10041
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView$SuggestionsPopupWindow;->mIsShowingUp:Z

    .line 10042
    invoke-super {p0}, Landroid/widget/TextView$PinnedPopupWindow;->show()V

    goto :goto_0
.end method
