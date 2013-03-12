.class Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;
.super Landroid/app/AlertDialog;
.source "ClippedDataPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/ClippedDataPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClearConfirmDialog"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic this$0:Lcom/android/server/sec/ClippedDataPickerDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    .line 230
    const/4 v0, 0x4

    invoke-direct {p0, p2, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 231
    iput-object p2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->mContext:Landroid/content/Context;

    .line 232
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 236
    new-instance v2, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;

    invoke-direct {v2, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;)V

    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 298
    const v2, 0x104076c

    invoke-virtual {p0, v2}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->setTitle(I)V

    .line 299
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->mContext:Landroid/content/Context;

    const v3, 0x1040772

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 301
    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->mContext:Landroid/content/Context;

    const v4, 0x104000a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 302
    const/4 v2, -0x2

    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->mContext:Landroid/content/Context;

    const/high16 v4, 0x104

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 304
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 305
    .local v1, theWindow:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 306
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7d8

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 307
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 309
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 310
    return-void
.end method
