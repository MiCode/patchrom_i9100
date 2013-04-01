.class public Lcom/sec/android/app/fm/RenameFileActivity;
.super Lcom/sec/android/app/fm/RecordedFileListActivity;
.source "RenameFileActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mRenameListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mSavedSelectedFilePath:Ljava/lang/String;

.field private mSelectedFilePath:Ljava/lang/String;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/sec/android/app/fm/RenameFileActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/fm/RenameFileActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sec/android/app/fm/RecordedFileListActivity;-><init>()V

    .line 39
    new-instance v0, Lcom/sec/android/app/fm/RenameFileActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/RenameFileActivity$1;-><init>(Lcom/sec/android/app/fm/RenameFileActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/RenameFileActivity;->mRenameListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 27
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/sec/android/app/fm/RenameFileActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/fm/RenameFileActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameFileActivity;->mSelectedFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/fm/RenameFileActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/sec/android/app/fm/RenameFileActivity;->mSelectedFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/fm/RenameFileActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameFileActivity;->mSavedSelectedFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/fm/RenameFileActivity;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameFileActivity;->mToast:Landroid/widget/Toast;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 60
    sget-object v0, Lcom/sec/android/app/fm/RenameFileActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-super {p0, p1}, Lcom/sec/android/app/fm/RecordedFileListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    if-eqz p1, :cond_0

    .line 65
    sget-object v0, Lcom/sec/android/app/fm/RenameFileActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate savedInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string v0, "selected_filepath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/RenameFileActivity;->mSavedSelectedFilePath:Ljava/lang/String;

    .line 69
    :cond_0
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/fm/RenameFileActivity;->mToast:Landroid/widget/Toast;

    .line 71
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameFileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 73
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameFileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 74
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 91
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "args"

    .prologue
    .line 95
    sget-object v1, Lcom/sec/android/app/fm/RenameFileActivity;->TAG:Ljava/lang/String;

    const-string v2, "onCreateDialog()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v0, Lcom/sec/android/app/fm/ui/RenameDialog;

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/app/fm/RenameFileActivity$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/fm/RenameFileActivity$2;-><init>(Lcom/sec/android/app/fm/RenameFileActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/fm/ui/RenameDialog;-><init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 161
    .local v0, dialog:Lcom/sec/android/app/fm/ui/RenameDialog;
    new-instance v1, Lcom/sec/android/app/fm/RenameFileActivity$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/fm/RenameFileActivity$3;-><init>(Lcom/sec/android/app/fm/RenameFileActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/RenameDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 168
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 173
    sget-object v0, Lcom/sec/android/app/fm/RenameFileActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreateOptionsMenu()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 179
    sget-object v0, Lcom/sec/android/app/fm/RenameFileActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOptionsItemSelected() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 185
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/fm/RecordedFileListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 182
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/fm/RenameFileActivity;->finish()V

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 6
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 191
    sget-object v4, Lcom/sec/android/app/fm/RenameFileActivity;->TAG:Ljava/lang/String;

    const-string v5, "onPrepareDialog()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v4, p0, Lcom/sec/android/app/fm/RenameFileActivity;->mSelectedFilePath:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 195
    sget-object v4, Lcom/sec/android/app/fm/RenameFileActivity;->TAG:Ljava/lang/String;

    const-string v5, "File not selected"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/fm/RenameFileActivity;->mSelectedFilePath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 201
    .local v2, len:I
    iget-object v4, p0, Lcom/sec/android/app/fm/RenameFileActivity;->mSelectedFilePath:Ljava/lang/String;

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v1, v4, 0x1

    .line 202
    .local v1, fileNameStart:I
    iget-object v4, p0, Lcom/sec/android/app/fm/RenameFileActivity;->mSelectedFilePath:Ljava/lang/String;

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 203
    .local v0, fileNameEnd:I
    if-ltz v1, :cond_1

    if-gt v1, v2, :cond_1

    if-ltz v0, :cond_1

    if-gt v0, v2, :cond_1

    .line 204
    iget-object v4, p0, Lcom/sec/android/app/fm/RenameFileActivity;->mSelectedFilePath:Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .local v3, oldFileName:Ljava/lang/String;
    move-object v4, p2

    .line 205
    check-cast v4, Lcom/sec/android/app/fm/ui/RenameDialog;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/fm/ui/RenameDialog;->setText(Ljava/lang/String;)V

    .line 207
    .end local v3           #oldFileName:Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/fm/RecordedFileListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/sec/android/app/fm/RecordedFileListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 80
    sget-object v1, Lcom/sec/android/app/fm/RenameFileActivity;->TAG:Ljava/lang/String;

    const-string v2, "onSaveInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v1, p0, Lcom/sec/android/app/fm/RenameFileActivity;->mSelectedFilePath:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/fm/RenameFileActivity;->mSavedSelectedFilePath:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/fm/RenameFileActivity;->mSelectedFilePath:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/fm/RenameFileActivity;->mSelectedFilePath:Ljava/lang/String;

    .line 83
    .local v0, filepath:Ljava/lang/String;
    :goto_0
    const-string v1, "selected_filepath"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .end local v0           #filepath:Ljava/lang/String;
    :cond_1
    return-void

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameFileActivity;->mSavedSelectedFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method protected setOnItemClickListener()V
    .locals 2

    .prologue
    .line 212
    sget-object v0, Lcom/sec/android/app/fm/RenameFileActivity;->TAG:Ljava/lang/String;

    const-string v1, "setOnItemClickListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/fm/RenameFileActivity;->mRenameListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/RenameFileActivity;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 214
    return-void
.end method
