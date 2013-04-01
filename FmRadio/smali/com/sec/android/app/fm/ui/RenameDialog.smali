.class public Lcom/sec/android/app/fm/ui/RenameDialog;
.super Landroid/app/AlertDialog;
.source "RenameDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final FILE_INVALID_CHAR:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private editText:Landroid/widget/EditText;

.field private inputManager:Landroid/view/inputmethod/InputMethodManager;

.field private listener:Landroid/content/DialogInterface$OnClickListener;

.field private toast:Landroid/widget/Toast;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\\"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ":"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "*"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "?"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "<"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "|"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/fm/ui/RenameDialog;->FILE_INVALID_CHAR:[Ljava/lang/String;

    .line 37
    const-class v0, Lcom/sec/android/app/fm/ui/RenameDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/fm/ui/RenameDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 7
    .parameter "context"
    .parameter "type"
    .parameter "listener"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 47
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 49
    iput-object p1, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->context:Landroid/content/Context;

    .line 51
    iget-object v2, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->toast:Landroid/widget/Toast;

    if-nez v2, :cond_0

    .line 52
    const-string v2, ""

    invoke-static {p1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->toast:Landroid/widget/Toast;

    .line 55
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030003

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, layout:Landroid/view/View;
    const v2, 0x7f070005

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 58
    .local v1, textView:Landroid/widget/TextView;
    iput p2, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->type:I

    .line 59
    packed-switch p2, :pswitch_data_0

    .line 70
    :goto_0
    const v2, 0x7f070006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->editText:Landroid/widget/EditText;

    .line 71
    iget-object v2, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->editText:Landroid/widget/EditText;

    invoke-direct {p0, p2}, Lcom/sec/android/app/fm/ui/RenameDialog;->getInputFilters(I)[Landroid/text/InputFilter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 72
    iget-object v2, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->setSingleLine()V

    .line 73
    iget-object v2, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->editText:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 74
    iget-object v2, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->editText:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 75
    iget-object v2, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->editText:Landroid/widget/EditText;

    const v3, 0x84001

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 78
    iget-object v2, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->editText:Landroid/widget/EditText;

    new-instance v3, Lcom/sec/android/app/fm/ui/RenameDialog$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/fm/ui/RenameDialog$1;-><init>(Lcom/sec/android/app/fm/ui/RenameDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 91
    iput-object p3, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->listener:Landroid/content/DialogInterface$OnClickListener;

    .line 93
    const v2, 0x7f0a0025

    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/ui/RenameDialog;->setTitle(I)V

    .line 94
    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/ui/RenameDialog;->setView(Landroid/view/View;)V

    .line 96
    const-string v2, "input_method"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 98
    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/RenameDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0020

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Lcom/sec/android/app/fm/ui/RenameDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 99
    const/4 v2, -0x2

    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/RenameDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0021

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p0}, Lcom/sec/android/app/fm/ui/RenameDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 100
    invoke-virtual {p0, v5}, Lcom/sec/android/app/fm/ui/RenameDialog;->setIcon(I)V

    .line 101
    return-void

    .line 61
    :pswitch_0
    const v2, 0x7f0a00a5

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 64
    :pswitch_1
    const v2, 0x7f0a00b7

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/sec/android/app/fm/ui/RenameDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/fm/ui/RenameDialog;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->toast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/sec/android/app/fm/ui/RenameDialog;->FILE_INVALID_CHAR:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/fm/ui/RenameDialog;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->listener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/fm/ui/RenameDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->editText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/fm/ui/RenameDialog;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private getInputFilters(I)[Landroid/text/InputFilter;
    .locals 4
    .parameter "type"

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, filterArray:[Landroid/text/InputFilter;
    packed-switch p1, :pswitch_data_0

    .line 164
    :goto_0
    return-object v0

    .line 108
    :pswitch_0
    new-array v0, v1, [Landroid/text/InputFilter;

    .line 109
    new-instance v1, Lcom/sec/android/app/fm/ui/RenameDialog$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/ui/RenameDialog$2;-><init>(Lcom/sec/android/app/fm/ui/RenameDialog;)V

    aput-object v1, v0, v2

    .line 120
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v3

    goto :goto_0

    .line 125
    :pswitch_1
    new-array v0, v1, [Landroid/text/InputFilter;

    .line 126
    new-instance v1, Lcom/sec/android/app/fm/ui/RenameDialog$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/ui/RenameDialog$3;-><init>(Lcom/sec/android/app/fm/ui/RenameDialog;)V

    aput-object v1, v0, v2

    .line 158
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    const/16 v2, 0x36

    invoke-direct {v1, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v3

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Landroid/app/AlertDialog;->onAttachedToWindow()V

    .line 191
    iget v0, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 193
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/ui/RenameDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/fm/ui/RenameDialog$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/ui/RenameDialog$4;-><init>(Lcom/sec/android/app/fm/ui/RenameDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 174
    sget-object v0, Lcom/sec/android/app/fm/ui/RenameDialog;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p0}, Lcom/sec/android/app/fm/ui/RenameDialog;->dismiss()V

    .line 176
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->listener:Landroid/content/DialogInterface$OnClickListener;

    if-nez v0, :cond_0

    .line 181
    sget-object v0, Lcom/sec/android/app/fm/ui/RenameDialog;->TAG:Ljava/lang/String;

    const-string v1, "onClick listener is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0
.end method

.method public setText(Lcom/sec/android/app/fm/data/Channel;)V
    .locals 2
    .parameter "channel"

    .prologue
    .line 219
    sget-object v0, Lcom/sec/android/app/fm/ui/RenameDialog;->TAG:Ljava/lang/String;

    const-string v1, "setChannel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    if-nez p1, :cond_0

    .line 221
    sget-object v0, Lcom/sec/android/app/fm/ui/RenameDialog;->TAG:Ljava/lang/String;

    const-string v1, "null channel"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->editText:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 235
    sget-object v0, Lcom/sec/android/app/fm/ui/RenameDialog;->TAG:Ljava/lang/String;

    const-string v1, "setChannel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    if-nez p1, :cond_0

    .line 237
    sget-object v0, Lcom/sec/android/app/fm/ui/RenameDialog;->TAG:Ljava/lang/String;

    const-string v1, "null text"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public show()V
    .locals 4

    .prologue
    .line 206
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/RenameDialog;->editText:Landroid/widget/EditText;

    new-instance v1, Lcom/sec/android/app/fm/ui/RenameDialog$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/ui/RenameDialog$5;-><init>(Lcom/sec/android/app/fm/ui/RenameDialog;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 216
    return-void
.end method
