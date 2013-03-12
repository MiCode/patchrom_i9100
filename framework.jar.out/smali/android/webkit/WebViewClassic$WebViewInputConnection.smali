.class Landroid/webkit/WebViewClassic$WebViewInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebViewInputConnection"
.end annotation


# instance fields
.field private mBatchLevel:I

.field private mHint:Ljava/lang/String;

.field private mImeOptions:I

.field private mInputType:I

.field private mIsAutoCompleteEnabled:Z

.field private mIsAutoFillable:Z

.field private mIsKeySentByMe:Z

.field private mIsReplacingText:Z

.field private mIsSameInputType:Z

.field public mIsUpdatingText:Z

.field private mKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field private mMaxLength:I

.field private mName:Ljava/lang/String;

.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 262
    iput-object p1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    .line 263
    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 246
    iput v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mInputType:I

    .line 248
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsSameInputType:Z

    .line 251
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsReplacingText:Z

    .line 253
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsUpdatingText:Z

    .line 264
    return-void
.end method

.method static synthetic access$4300(Landroid/webkit/WebViewClassic$WebViewInputConnection;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 242
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->sendKey(I)V

    return-void
.end method

.method private limitReplaceTextByMaxLength(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 5
    .parameter "text"
    .parameter "numReplaced"

    .prologue
    const/4 v4, 0x0

    .line 836
    iget v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mMaxLength:I

    if-lez v2, :cond_0

    .line 837
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 838
    .local v0, editable:Landroid/text/Editable;
    iget v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mMaxLength:I

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    sub-int/2addr v2, v3

    add-int v1, v2, p2

    .line 839
    .local v1, maxReplace:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 840
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 842
    invoke-interface {p1, v4, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 844
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->resetBatchEdit()V

    .line 848
    .end local v0           #editable:Landroid/text/Editable;
    .end local v1           #maxReplace:I
    :cond_0
    return-object p1
.end method

.method private resetBatchEdit()V
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    .line 303
    return-void
.end method

.method private restartInput()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 852
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 853
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    .line 859
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsReplacingText:Z

    if-eq v1, v3, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsUpdatingText:Z

    if-ne v1, v3, :cond_3

    .line 860
    :cond_0
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsReplacingText:Z

    .line 861
    iput-boolean v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsUpdatingText:Z

    .line 871
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 873
    :cond_2
    return-void

    .line 863
    :cond_3
    iget-boolean v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsSameInputType:Z

    if-nez v1, :cond_1

    .line 864
    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-boolean v1, v1, Landroid/webkit/WebViewClassic;->mIsSoftkeyboardVisible:Z

    if-eqz v1, :cond_1

    .line 865
    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 866
    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 867
    iput-boolean v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsSameInputType:Z

    goto :goto_0
.end method

.method private sendCharacter(C)V
    .locals 10
    .parameter "c"

    .prologue
    const/4 v9, 0x0

    .line 801
    iget-object v7, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    if-nez v7, :cond_0

    .line 802
    const/4 v7, -0x1

    invoke-static {v7}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v7

    iput-object v7, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 804
    :cond_0
    const/4 v7, 0x1

    new-array v1, v7, [C

    .line 805
    .local v1, chars:[C
    aput-char p1, v1, v9

    .line 806
    iget-object v7, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mKeyCharacterMap:Landroid/view/KeyCharacterMap;

    invoke-virtual {v7, v1}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v3

    .line 807
    .local v3, events:[Landroid/view/KeyEvent;
    if-eqz v3, :cond_1

    .line 808
    move-object v0, v3

    .local v0, arr$:[Landroid/view/KeyEvent;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .line 809
    .local v2, event:Landroid/view/KeyEvent;
    invoke-virtual {p0, v2}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 808
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 812
    .end local v0           #arr$:[Landroid/view/KeyEvent;
    .end local v2           #event:Landroid/view/KeyEvent;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    iget-object v7, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v7, v7, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v8, 0x91

    invoke-virtual {v7, v8, p1, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    .line 813
    .local v6, msg:Landroid/os/Message;
    iget-object v7, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v7, v7, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 815
    .end local v6           #msg:Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private sendKey(I)V
    .locals 15
    .parameter "keyCode"

    .prologue
    .line 823
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 824
    .local v1, eventTime:J
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    move-wide v3, v1

    move/from16 v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 828
    new-instance v3, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x2

    move-wide v6, v1

    move/from16 v9, p1

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 832
    return-void
.end method

.method private setNewText(IILjava/lang/CharSequence;)V
    .locals 14
    .parameter "start"
    .parameter "end"
    .parameter "text"

    .prologue
    .line 753
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsKeySentByMe:Z

    .line 754
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v1

    .line 755
    .local v1, editable:Landroid/text/Editable;
    move/from16 v0, p2

    invoke-interface {v1, p1, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 756
    .local v5, original:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 757
    .local v2, isCharacterAdd:Z
    const/4 v3, 0x0

    .line 758
    .local v3, isCharacterDelete:Z
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v10

    .line 759
    .local v10, textLength:I
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 760
    .local v6, originalLength:I
    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v9

    .line 761
    .local v9, selectionStart:I
    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v8

    .line 762
    .local v8, selectionEnd:I
    if-ne v9, v8, :cond_0

    .line 763
    if-le v10, v6, :cond_4

    .line 764
    add-int/lit8 v11, v6, 0x1

    if-ne v10, v11, :cond_3

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v11, v5, v12, v6}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v2, 0x1

    .line 773
    :cond_0
    :goto_0
    if-eqz v2, :cond_6

    .line 774
    add-int/lit8 v11, v10, -0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    invoke-direct {p0, v11}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->sendCharacter(C)V

    .line 786
    :cond_1
    :goto_1
    iget-object v11, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v11}, Landroid/webkit/WebViewClassic;->access$1000(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 787
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 788
    .local v4, newText:Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    invoke-interface {v1, v11, p1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 789
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 790
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v11

    move/from16 v0, p2

    invoke-interface {v1, v0, v11}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 791
    iget-object v11, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v11}, Landroid/webkit/WebViewClassic;->access$1000(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/webkit/AutoCompletePopup;->setText(Ljava/lang/CharSequence;)V

    .line 793
    .end local v4           #newText:Ljava/lang/StringBuilder;
    :cond_2
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsKeySentByMe:Z

    .line 794
    return-void

    .line 764
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 767
    :cond_4
    if-le v6, v10, :cond_0

    .line 768
    add-int/lit8 v11, v6, -0x1

    if-ne v10, v11, :cond_5

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v11, v5, v12, v10}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v3, 0x1

    :goto_2
    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 775
    :cond_6
    if-eqz v3, :cond_7

    .line 776
    const/16 v11, 0x43

    invoke-direct {p0, v11}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->sendKey(I)V

    goto :goto_1

    .line 777
    :cond_7
    if-ne v10, v6, :cond_8

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v11, v5, v12, v10}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v11

    if-nez v11, :cond_1

    .line 782
    :cond_8
    iget-object v11, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v11, v11, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v12, 0x8f

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v11, v12, p1, v0, v13}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 784
    .local v7, replaceMessage:Landroid/os/Message;
    iget-object v11, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v11, v11, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v11, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method private updateSelection()V
    .locals 8

    .prologue
    .line 724
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v6

    .line 725
    .local v6, editable:Landroid/text/Editable;
    invoke-static {v6}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 726
    .local v2, selectionStart:I
    invoke-static {v6}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 728
    .local v3, selectionEnd:I
    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mIsNewInputField:Z
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Z

    move-result v1

    const/4 v7, 0x1

    if-ne v1, v7, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mIsScreenTouch:Z
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$1200(Landroid/webkit/WebViewClassic;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 729
    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v7, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mIsNewInputField:Z
    invoke-static {v1, v7}, Landroid/webkit/WebViewClassic;->access$1102(Landroid/webkit/WebViewClassic;Z)Z

    .line 730
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->moveCursorToEnd()V

    .line 731
    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v2

    .line 732
    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v3

    .line 735
    :cond_0
    invoke-static {v6}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 736
    .local v4, composingStart:I
    invoke-static {v6}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .line 737
    .local v5, composingEnd:I
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 738
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 739
    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 742
    :cond_1
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->beginTextBatch()V
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$200(Landroid/webkit/WebViewClassic;)V

    .line 284
    :cond_0
    iget v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 1
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 473
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 474
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->finishComposingText()Z

    .line 475
    const/4 v0, 0x1

    return v0
.end method

.method public deleteSurroundingText(II)Z
    .locals 10
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    const/4 v8, -0x1

    .line 482
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v4

    .line 483
    .local v4, content:Landroid/text/Editable;
    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 484
    .local v0, a:I
    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 486
    .local v1, b:I
    if-le v0, v1, :cond_0

    .line 487
    move v7, v0

    .line 488
    .local v7, tmp:I
    move v0, v1

    .line 489
    move v1, v7

    .line 492
    .end local v7           #tmp:I
    :cond_0
    invoke-static {v4}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v2

    .line 493
    .local v2, ca:I
    invoke-static {v4}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v3

    .line 494
    .local v3, cb:I
    if-ge v3, v2, :cond_1

    .line 495
    move v7, v2

    .line 496
    .restart local v7       #tmp:I
    move v2, v3

    .line 497
    move v3, v7

    .line 499
    .end local v7           #tmp:I
    :cond_1
    if-eq v2, v8, :cond_3

    if-eq v3, v8, :cond_3

    .line 500
    if-ge v2, v0, :cond_2

    move v0, v2

    .line 501
    :cond_2
    if-le v3, v1, :cond_3

    move v1, v3

    .line 504
    :cond_3
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v8

    add-int v9, v1, p2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 505
    .local v5, endDelete:I
    if-le v5, v1, :cond_4

    .line 506
    const-string v8, ""

    invoke-direct {p0, v1, v5, v8}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setNewText(IILjava/lang/CharSequence;)V

    .line 508
    :cond_4
    const/4 v8, 0x0

    sub-int v9, v0, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 509
    .local v6, startDelete:I
    if-ge v6, v0, :cond_5

    .line 510
    const-string v8, ""

    invoke-direct {p0, v6, v0, v8}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setNewText(IILjava/lang/CharSequence;)V

    .line 513
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    .line 515
    const/4 v8, 0x1

    return v8
.end method

.method public endBatchEdit()Z
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    if-lez v0, :cond_0

    .line 292
    iget v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    .line 294
    :cond_0
    iget v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mBatchLevel:I

    if-nez v0, :cond_1

    .line 295
    iget-object v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->commitTextBatch()V
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$300(Landroid/webkit/WebViewClassic;)V

    .line 297
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 876
    iget v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mInputType:I

    return v0
.end method

.method public getIsAutoFillable()Z
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsAutoFillable:Z

    return v0
.end method

.method public initEditorInfo(Landroid/webkit/WebViewCore$TextFieldInitData;)V
    .locals 7
    .parameter "initData"

    .prologue
    const/4 v6, 0x1

    .line 566
    iget v3, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mType:I

    .line 567
    .local v3, type:I
    const/16 v1, 0xa1

    .line 569
    .local v1, inputType:I
    const/high16 v0, 0x1200

    .line 571
    .local v0, imeOptions:I
    iget-boolean v4, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsSpellCheckEnabled:Z

    if-nez v4, :cond_0

    .line 572
    const/high16 v4, 0x8

    or-int/2addr v1, v4

    .line 574
    :cond_0
    if-eq v6, v3, :cond_2

    .line 575
    iget-boolean v4, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsTextFieldNext:Z

    if-eqz v4, :cond_1

    .line 576
    const/high16 v4, 0x800

    or-int/2addr v0, v4

    .line 578
    :cond_1
    iget-boolean v4, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsTextFieldPrev:Z

    if-eqz v4, :cond_2

    .line 579
    const/high16 v4, 0x400

    or-int/2addr v0, v4

    .line 582
    :cond_2
    packed-switch v3, :pswitch_data_0

    .line 626
    or-int/lit8 v0, v0, 0x2

    .line 630
    :goto_0
    iget-object v4, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v2

    .line 631
    .local v2, settings:Landroid/webkit/WebSettingsClassic;
    if-eqz v2, :cond_5

    .line 635
    iget-boolean v4, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsTextFieldNext:Z

    if-nez v4, :cond_3

    iget-boolean v4, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsSelectFieldNext:Z

    if-eqz v4, :cond_6

    :cond_3
    iget-boolean v4, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsTextFieldPrev:Z

    if-nez v4, :cond_4

    iget-boolean v4, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsSelectFieldPrev:Z

    if-eqz v4, :cond_6

    .line 637
    :cond_4
    iget-object v4, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    const-string v5, "com.sec.android.inputmethod.axt9.BrowserPrevNext"

    #setter for: Landroid/webkit/WebViewClassic;->mPrivateImeOptions:Ljava/lang/String;
    invoke-static {v4, v5}, Landroid/webkit/WebViewClassic;->access$902(Landroid/webkit/WebViewClassic;Ljava/lang/String;)Ljava/lang/String;

    .line 653
    :cond_5
    :goto_1
    iget-object v4, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mLabel:Ljava/lang/String;

    iput-object v4, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mHint:Ljava/lang/String;

    .line 655
    iget v4, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mInputType:I

    if-eq v1, v4, :cond_b

    .line 656
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsSameInputType:Z

    .line 661
    :goto_2
    iput v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mInputType:I

    .line 662
    iput v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mImeOptions:I

    .line 663
    iget v4, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mMaxLength:I

    iput v4, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mMaxLength:I

    .line 664
    iget-boolean v4, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsAutoCompleteEnabled:Z

    iput-boolean v4, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsAutoCompleteEnabled:Z

    .line 665
    iget-object v4, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mName:Ljava/lang/String;

    iput-object v4, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mName:Ljava/lang/String;

    .line 666
    iget-object v4, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v4}, Landroid/webkit/WebViewClassic;->access$1000(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/AutoCompletePopup;->clearAdapter()V

    .line 667
    return-void

    .line 584
    .end local v2           #settings:Landroid/webkit/WebSettingsClassic;
    :pswitch_0
    or-int/lit8 v0, v0, 0x2

    .line 585
    goto :goto_0

    .line 587
    :pswitch_1
    const v4, 0x2c000

    or-int/2addr v1, v4

    .line 590
    or-int/lit8 v0, v0, 0x1

    .line 591
    goto :goto_0

    .line 593
    :pswitch_2
    or-int/lit16 v1, v1, 0xe0

    .line 594
    or-int/lit8 v0, v0, 0x2

    .line 595
    goto :goto_0

    .line 597
    :pswitch_3
    or-int/lit8 v0, v0, 0x3

    .line 598
    goto :goto_0

    .line 601
    :pswitch_4
    const/16 v1, 0x20

    .line 604
    or-int/lit8 v0, v0, 0x2

    .line 605
    goto :goto_0

    .line 608
    :pswitch_5
    const/16 v1, 0x3002

    .line 612
    or-int/lit8 v0, v0, 0x5

    .line 613
    goto :goto_0

    .line 616
    :pswitch_6
    const/4 v1, 0x3

    .line 617
    or-int/lit8 v0, v0, 0x5

    .line 618
    goto :goto_0

    .line 622
    :pswitch_7
    or-int/lit8 v0, v0, 0x2

    .line 623
    or-int/lit8 v1, v1, 0x10

    .line 624
    goto :goto_0

    .line 639
    .restart local v2       #settings:Landroid/webkit/WebSettingsClassic;
    :cond_6
    iget-boolean v4, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsTextFieldNext:Z

    if-nez v4, :cond_7

    iget-boolean v4, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsSelectFieldNext:Z

    if-eqz v4, :cond_8

    .line 640
    :cond_7
    iget-object v4, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    const-string v5, "com.sec.android.inputmethod.axt9.MoveFocusNext"

    #setter for: Landroid/webkit/WebViewClassic;->mPrivateImeOptions:Ljava/lang/String;
    invoke-static {v4, v5}, Landroid/webkit/WebViewClassic;->access$902(Landroid/webkit/WebViewClassic;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 642
    :cond_8
    iget-boolean v4, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsTextFieldPrev:Z

    if-nez v4, :cond_9

    iget-boolean v4, p1, Landroid/webkit/WebViewCore$TextFieldInitData;->mIsSelectFieldPrev:Z

    if-eqz v4, :cond_a

    .line 643
    :cond_9
    iget-object v4, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    const-string v5, "com.sec.android.inputmethod.axt9.MoveFocusPrev"

    #setter for: Landroid/webkit/WebViewClassic;->mPrivateImeOptions:Ljava/lang/String;
    invoke-static {v4, v5}, Landroid/webkit/WebViewClassic;->access$902(Landroid/webkit/WebViewClassic;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 646
    :cond_a
    iget-object v4, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v5, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mPrivateImeOptions:Ljava/lang/String;
    invoke-static {v4, v5}, Landroid/webkit/WebViewClassic;->access$902(Landroid/webkit/WebViewClassic;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 658
    :cond_b
    iput-boolean v6, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsSameInputType:Z

    goto :goto_2

    .line 582
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
    .end packed-switch
.end method

.method public moveCursorToEnd()V
    .locals 3

    .prologue
    .line 714
    new-instance v0, Landroid/webkit/WebViewClassic$CmdVal;

    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {v0, v1}, Landroid/webkit/WebViewClassic$CmdVal;-><init>(Landroid/webkit/WebViewClassic;)V

    .line 715
    .local v0, cmdVal:Landroid/webkit/WebViewClassic$CmdVal;
    const-string v1, "MoveToEndOfLine"

    iput-object v1, v0, Landroid/webkit/WebViewClassic$CmdVal;->command:Ljava/lang/String;

    .line 716
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, v0, Landroid/webkit/WebViewClassic$CmdVal;->value:Ljava/lang/String;

    .line 717
    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v1}, Landroid/webkit/WebViewClassic;->access$800(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore;

    move-result-object v1

    const/16 v2, 0x203

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 718
    return-void
.end method

.method public performEditorAction(I)Z
    .locals 7
    .parameter "editorAction"

    .prologue
    const/16 v6, 0x42

    const/4 v5, 0x1

    .line 522
    const/4 v0, 0x1

    .line 523
    .local v0, handled:Z
    packed-switch p1, :pswitch_data_0

    .line 544
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->performEditorAction(I)Z

    move-result v0

    .line 548
    :goto_0
    return v0

    .line 525
    :pswitch_1
    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->requestFocus(I)Z

    goto :goto_0

    .line 528
    :pswitch_2
    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->requestFocus(I)Z

    goto :goto_0

    .line 531
    :pswitch_3
    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->hideSoftKeyboard()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$700(Landroid/webkit/WebViewClassic;)V

    goto :goto_0

    .line 535
    :pswitch_4
    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->hideSoftKeyboard()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$700(Landroid/webkit/WebViewClassic;)V

    .line 536
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 537
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    new-instance v3, Landroid/view/KeyEvent;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v6}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/webkit/WebViewClassic;->passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V

    .line 539
    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    new-instance v3, Landroid/view/KeyEvent;

    invoke-direct {v3, v5, v6}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/webkit/WebViewClassic;->passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 523
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2
    .parameter "action"
    .parameter "data"

    .prologue
    .line 554
    const-string v0, "com.sec.android.inputmethod.axt9.MoveFocusPrev"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 555
    iget-object v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$800(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x259

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 556
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->moveCursorToEnd()V

    .line 562
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 558
    :cond_1
    const-string v0, "com.sec.android.inputmethod.axt9.MoveFocusNext"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$800(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore;

    move-result-object v0

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 560
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->moveCursorToEnd()V

    goto :goto_0
.end method

.method public replaceSelection(Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "text"

    .prologue
    .line 406
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 407
    .local v0, editable:Landroid/text/Editable;
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 408
    .local v3, selectionStart:I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 409
    .local v2, selectionEnd:I
    sub-int v4, v2, v3

    invoke-direct {p0, p1, v4}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->limitReplaceTextByMaxLength(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 410
    invoke-direct {p0, v3, v2, p1}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setNewText(IILjava/lang/CharSequence;)V

    .line 411
    invoke-interface {v0, v3, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 412
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsReplacingText:Z

    .line 413
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->restartInput()V

    .line 415
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int v1, v3, v4

    .line 416
    .local v1, newCaret:I
    invoke-virtual {p0, v1, v1}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    .line 417
    return-void
.end method

.method public replaceText(Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "text"

    .prologue
    .line 424
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 425
    .local v0, editable:Landroid/text/Editable;
    const/4 v4, 0x0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    .line 426
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 427
    .local v3, selectionStart:I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 428
    .local v2, selectionEnd:I
    sub-int v4, v2, v3

    invoke-direct {p0, p1, v4}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->limitReplaceTextByMaxLength(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 429
    invoke-direct {p0, v3, v2, p1}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setNewText(IILjava/lang/CharSequence;)V

    .line 430
    invoke-interface {v0, v3, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 431
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->restartInput()V

    .line 433
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int v1, v3, v4

    .line 434
    .local v1, newCaret:I
    invoke-virtual {p0, v1, v1}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    .line 435
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->moveCursorToEnd()V

    .line 436
    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/16 v7, 0xdd

    const/16 v6, 0x70

    const/16 v5, 0x43

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 321
    iget-boolean v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsKeySentByMe:Z

    if-nez v3, :cond_0

    .line 322
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_5

    .line 323
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 325
    iget-object v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mBTWebSelectionOn:Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$400(Landroid/webkit/WebViewClassic;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 326
    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #setter for: Landroid/webkit/WebViewClassic;->mBTWebSelectionOn:Z
    invoke-static {v2, v4}, Landroid/webkit/WebViewClassic;->access$402(Landroid/webkit/WebViewClassic;Z)Z

    .line 371
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 373
    const/4 v2, 0x4

    invoke-static {p1, v2}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 374
    .local v0, eventForTouch:Landroid/view/KeyEvent;
    invoke-super {p0, v0}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 381
    .end local v0           #eventForTouch:Landroid/view/KeyEvent;
    :cond_1
    :goto_1
    return v2

    .line 329
    :cond_2
    invoke-virtual {p0, v2, v4}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->deleteSurroundingText(II)Z

    move-result v2

    goto :goto_1

    .line 333
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v3, v6, :cond_4

    .line 334
    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mBTWebSelectionOn:Z
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$400(Landroid/webkit/WebViewClassic;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 335
    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #setter for: Landroid/webkit/WebViewClassic;->mBTWebSelectionOn:Z
    invoke-static {v2, v4}, Landroid/webkit/WebViewClassic;->access$402(Landroid/webkit/WebViewClassic;Z)Z

    goto :goto_0

    .line 338
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    if-eqz v3, :cond_0

    .line 339
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, newComposingText:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v2

    goto :goto_1

    .line 343
    .end local v1           #newComposingText:Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 344
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-eq v3, v5, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    if-eqz v3, :cond_8

    .line 346
    :cond_6
    iget-object v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebSelectionOn:Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$500(Landroid/webkit/WebViewClassic;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mBTWebSelectionOn:Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$400(Landroid/webkit/WebViewClassic;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectingText:Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 350
    :cond_7
    iget-object v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    const-string v4, "Delete"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebViewClassic;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 353
    :cond_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v3, v6, :cond_a

    .line 355
    iget-object v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebSelectionOn:Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$500(Landroid/webkit/WebViewClassic;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mBTWebSelectionOn:Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$400(Landroid/webkit/WebViewClassic;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 359
    :cond_9
    iget-object v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    const-string v4, "DeleteForward"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebViewClassic;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 364
    :cond_a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 365
    iget-object v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->pasteFromClipboardEx()V

    goto/16 :goto_1

    .line 377
    :cond_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-ne v2, v7, :cond_c

    .line 378
    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->pasteFromClipboardEx()V

    .line 381
    :cond_c
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_1
.end method

.method public setAutoFillable(I)V
    .locals 6
    .parameter "queryId"

    .prologue
    .line 267
    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettingsClassic;->getAutoFillEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsAutoFillable:Z

    .line 269
    iget v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mInputType:I

    and-int/lit16 v0, v1, 0xff0

    .line 270
    .local v0, variation:I
    const/16 v1, 0xe0

    if-eq v0, v1, :cond_1

    iget-boolean v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsAutoFillable:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsAutoCompleteEnabled:Z

    if-eqz v1, :cond_1

    .line 272
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 273
    iget-object v1, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mName:Ljava/lang/String;

    iget-object v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)I

    move-result v3

    iget-boolean v4, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsAutoFillable:Z

    iget-boolean v5, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mIsAutoCompleteEnabled:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/webkit/WebViewClassic;->requestFormData(Ljava/lang/String;IZZ)V

    .line 277
    :cond_1
    return-void

    .line 267
    .end local v0           #variation:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setComposingRegion(II)Z
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 708
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingRegion(II)Z

    move-result v0

    .line 709
    .local v0, result:Z
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->updateSelection()V

    .line 710
    return v0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 8
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 441
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 442
    .local v0, editable:Landroid/text/Editable;
    invoke-static {v0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 443
    .local v4, start:I
    invoke-static {v0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    .line 444
    .local v1, end:I
    if-ltz v4, :cond_0

    if-gez v1, :cond_1

    .line 445
    :cond_0
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    .line 446
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 448
    :cond_1
    if-ge v1, v4, :cond_2

    .line 449
    move v5, v1

    .line 450
    .local v5, temp:I
    move v1, v4

    .line 451
    move v4, v5

    .line 453
    .end local v5           #temp:I
    :cond_2
    sub-int v6, v1, v4

    invoke-direct {p0, p1, v6}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->limitReplaceTextByMaxLength(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 454
    .local v3, limitedText:Ljava/lang/CharSequence;
    invoke-direct {p0, v4, v1, v3}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setNewText(IILjava/lang/CharSequence;)V

    .line 455
    if-eq v3, p1, :cond_3

    .line 456
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr p2, v6

    .line 458
    :cond_3
    invoke-super {p0, v3, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 459
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->updateSelection()V

    .line 460
    if-eq v3, p1, :cond_4

    .line 464
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int v2, v4, v6

    .line 465
    .local v2, lastCaret:I
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->finishComposingText()Z

    .line 466
    invoke-virtual {p0, v2, v2}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    .line 468
    .end local v2           #lastCaret:I
    :cond_4
    const/4 v6, 0x1

    return v6
.end method

.method public setSelection(II)Z
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 701
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setSelection(II)Z

    move-result v0

    .line 702
    .local v0, result:Z
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->updateSelection()V

    .line 703
    return v0
.end method

.method public setTextAndKeepSelection(Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "text"

    .prologue
    .line 387
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 389
    .local v0, editable:Landroid/text/Editable;
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 390
    .local v2, selectionStart:I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 391
    .local v1, selectionEnd:I
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-direct {p0, p1, v3}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->limitReplaceTextByMaxLength(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 392
    const/4 v3, 0x0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-interface {v0, v3, v4, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 395
    invoke-direct {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->restartInput()V

    .line 399
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 400
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 401
    invoke-virtual {p0, v2, v1}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setSelection(II)Z

    .line 402
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->finishComposingText()Z

    .line 403
    return-void
.end method

.method public setupEditorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .locals 4
    .parameter "outAttrs"

    .prologue
    .line 674
    iget-object v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mPrivateImeOptions:Ljava/lang/String;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$900(Landroid/webkit/WebViewClassic;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 683
    iget v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mInputType:I

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 684
    iget v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mImeOptions:I

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 685
    iget-object v3, p0, Landroid/webkit/WebViewClassic$WebViewInputConnection;->mHint:Ljava/lang/String;

    iput-object v3, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 686
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getCursorCapsMode(I)I

    move-result v3

    iput v3, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 688
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 689
    .local v0, editable:Landroid/text/Editable;
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 690
    .local v2, selectionStart:I
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 691
    .local v1, selectionEnd:I
    if-ltz v2, :cond_0

    if-gez v1, :cond_1

    .line 692
    :cond_0
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    .line 693
    move v1, v2

    .line 695
    :cond_1
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 696
    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 697
    return-void
.end method
