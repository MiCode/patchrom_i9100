.class Landroid/widget/TextView$EasyEditSpanController;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EasyEditSpanController"
.end annotation


# static fields
.field private static final DISPLAY_TIMEOUT_MS:I = 0xbb8


# instance fields
.field private mEasyEditSpan:Landroid/text/style/EasyEditSpan;

.field private mHidePopup:Ljava/lang/Runnable;

.field private mPopupWindow:Landroid/widget/TextView$EasyEditPopupWindow;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .parameter

    .prologue
    .line 8061
    iput-object p1, p0, Landroid/widget/TextView$EasyEditSpanController;->this$0:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8061
    invoke-direct {p0, p1}, Landroid/widget/TextView$EasyEditSpanController;-><init>(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/widget/TextView$EasyEditSpanController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 8061
    invoke-direct {p0}, Landroid/widget/TextView$EasyEditSpanController;->hide()V

    return-void
.end method

.method private adjustSpans(Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "buffer"

    .prologue
    .line 8147
    instance-of v3, p1, Landroid/text/Spannable;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 8148
    check-cast v1, Landroid/text/Spannable;

    .line 8149
    .local v1, spannable:Landroid/text/Spannable;
    const/4 v3, 0x0

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/style/EasyEditSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/EasyEditSpan;

    .line 8151
    .local v2, spans:[Landroid/text/style/EasyEditSpan;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    .line 8152
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 8151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8155
    .end local v0           #i:I
    .end local v1           #spannable:Landroid/text/Spannable;
    .end local v2           #spans:[Landroid/text/style/EasyEditSpan;
    :cond_0
    return-void
.end method

.method private getSpan(Landroid/text/Spanned;)Landroid/text/style/EasyEditSpan;
    .locals 4
    .parameter "spanned"

    .prologue
    const/4 v3, 0x0

    .line 8172
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Landroid/text/style/EasyEditSpan;

    invoke-interface {p1, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/EasyEditSpan;

    .line 8174
    .local v0, easyEditSpans:[Landroid/text/style/EasyEditSpan;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 8175
    const/4 v1, 0x0

    .line 8177
    :goto_0
    return-object v1

    :cond_0
    aget-object v1, v0, v3

    goto :goto_0
.end method

.method private hide()V
    .locals 2

    .prologue
    .line 8072
    iget-object v0, p0, Landroid/widget/TextView$EasyEditSpanController;->mPopupWindow:Landroid/widget/TextView$EasyEditPopupWindow;

    if-eqz v0, :cond_0

    .line 8073
    iget-object v0, p0, Landroid/widget/TextView$EasyEditSpanController;->mPopupWindow:Landroid/widget/TextView$EasyEditPopupWindow;

    invoke-virtual {v0}, Landroid/widget/TextView$EasyEditPopupWindow;->hide()V

    .line 8074
    iget-object v0, p0, Landroid/widget/TextView$EasyEditSpanController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->mHidePopup:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8076
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$EasyEditSpanController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/widget/TextView;->access$600(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/TextView$EasyEditSpanController;->removeSpans(Ljava/lang/CharSequence;)V

    .line 8077
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView$EasyEditSpanController;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    .line 8078
    return-void
.end method

.method private removeSpans(Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "buffer"

    .prologue
    .line 8161
    instance-of v3, p1, Landroid/text/Spannable;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 8162
    check-cast v1, Landroid/text/Spannable;

    .line 8163
    .local v1, spannable:Landroid/text/Spannable;
    const/4 v3, 0x0

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/style/EasyEditSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/EasyEditSpan;

    .line 8165
    .local v2, spans:[Landroid/text/style/EasyEditSpan;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 8166
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 8165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8169
    .end local v0           #i:I
    .end local v1           #spannable:Landroid/text/Spannable;
    .end local v2           #spans:[Landroid/text/style/EasyEditSpan;
    :cond_0
    return-void
.end method


# virtual methods
.method public onTextChange(Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "buffer"

    .prologue
    const/4 v3, 0x0

    .line 8087
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/widget/TextView;->access$600(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/TextView$EasyEditSpanController;->adjustSpans(Ljava/lang/CharSequence;)V

    .line 8089
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 8137
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 8094
    .restart local p1
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->this$0:Landroid/widget/TextView;

    iget-object v1, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_0

    .line 8099
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 8100
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->this$0:Landroid/widget/TextView;

    instance-of v1, v1, Landroid/inputmethodservice/ExtractEditText;

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8109
    :cond_2
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    if-eqz v1, :cond_4

    .line 8110
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/widget/TextView;->access$600(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_3

    .line 8111
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/widget/TextView;->access$600(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    iget-object v2, p0, Landroid/widget/TextView$EasyEditSpanController;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    invoke-interface {v1, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 8113
    :cond_3
    iput-object v3, p0, Landroid/widget/TextView$EasyEditSpanController;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    .line 8115
    :cond_4
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->mPopupWindow:Landroid/widget/TextView$EasyEditPopupWindow;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->mPopupWindow:Landroid/widget/TextView$EasyEditPopupWindow;

    invoke-virtual {v1}, Landroid/widget/TextView$EasyEditPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 8116
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->mPopupWindow:Landroid/widget/TextView$EasyEditPopupWindow;

    invoke-virtual {v1}, Landroid/widget/TextView$EasyEditPopupWindow;->hide()V

    .line 8120
    :cond_5
    instance-of v1, p1, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    .line 8121
    check-cast p1, Landroid/text/Spanned;

    .end local p1
    invoke-direct {p0, p1}, Landroid/widget/TextView$EasyEditSpanController;->getSpan(Landroid/text/Spanned;)Landroid/text/style/EasyEditSpan;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    .line 8122
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    if-eqz v1, :cond_0

    .line 8123
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->mPopupWindow:Landroid/widget/TextView$EasyEditPopupWindow;

    if-nez v1, :cond_6

    .line 8124
    new-instance v1, Landroid/widget/TextView$EasyEditPopupWindow;

    iget-object v2, p0, Landroid/widget/TextView$EasyEditSpanController;->this$0:Landroid/widget/TextView;

    invoke-direct {v1, v2, v3}, Landroid/widget/TextView$EasyEditPopupWindow;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    iput-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->mPopupWindow:Landroid/widget/TextView$EasyEditPopupWindow;

    .line 8125
    new-instance v1, Landroid/widget/TextView$EasyEditSpanController$1;

    invoke-direct {v1, p0}, Landroid/widget/TextView$EasyEditSpanController$1;-><init>(Landroid/widget/TextView$EasyEditSpanController;)V

    iput-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->mHidePopup:Ljava/lang/Runnable;

    .line 8132
    :cond_6
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->mPopupWindow:Landroid/widget/TextView$EasyEditPopupWindow;

    iget-object v2, p0, Landroid/widget/TextView$EasyEditSpanController;->mEasyEditSpan:Landroid/text/style/EasyEditSpan;

    invoke-virtual {v1, v2}, Landroid/widget/TextView$EasyEditPopupWindow;->show(Landroid/text/style/EasyEditSpan;)V

    .line 8133
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->this$0:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TextView$EasyEditSpanController;->mHidePopup:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8134
    iget-object v1, p0, Landroid/widget/TextView$EasyEditSpanController;->this$0:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TextView$EasyEditSpanController;->mHidePopup:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
