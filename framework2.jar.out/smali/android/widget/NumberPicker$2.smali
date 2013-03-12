.class Landroid/widget/NumberPicker$2;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 618
    iput-object p1, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 620
    iget-object v2, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    #calls: Landroid/widget/NumberPicker;->hideSoftInput()V
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$000(Landroid/widget/NumberPicker;)V

    .line 621
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 624
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 625
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v1

    .line 626
    .local v1, mKeyboard:I
    and-int/lit8 v2, v1, 0x1

    if-eq v2, v5, :cond_0

    and-int/lit8 v2, v1, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 629
    :cond_0
    iget-object v2, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 633
    .end local v1           #mKeyboard:I
    :cond_1
    iget-object v2, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    .line 634
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x10203d3

    if-ne v2, v3, :cond_2

    .line 635
    iget-object v2, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    #calls: Landroid/widget/NumberPicker;->changeValueByOne(Z)V
    invoke-static {v2, v5}, Landroid/widget/NumberPicker;->access$200(Landroid/widget/NumberPicker;Z)V

    .line 639
    :goto_0
    return-void

    .line 637
    :cond_2
    iget-object v2, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    #calls: Landroid/widget/NumberPicker;->changeValueByOne(Z)V
    invoke-static {v2, v4}, Landroid/widget/NumberPicker;->access$200(Landroid/widget/NumberPicker;Z)V

    goto :goto_0
.end method
