.class Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;
.super Ljava/lang/Object;
.source "ClippedDataPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;


# direct methods
.method constructor <init>(Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/high16 v10, 0x200

    const/4 v9, 0x0

    .line 239
    const/4 v6, -0x1

    if-ne p2, v6, :cond_7

    .line 240
    const-string v6, "ClipboardServiceEx"

    const-string v7, "pressed OK"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v6}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v6

    if-nez v6, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v6}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v1

    .line 247
    .local v1, count:I
    const/4 v5, 0x0

    .line 249
    .local v5, protectCount:I
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "ClipboardServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clear button touched... count :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_2
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v1, :cond_5

    .line 251
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "ClipboardServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mCbm.getDataListSize() :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v8, v8, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v8}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_3
    :try_start_0
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #calls: Lcom/android/server/sec/ClippedDataPickerDialog;->isCheckProtectedItem(I)Z
    invoke-static {v6, v5}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$200(Lcom/android/server/sec/ClippedDataPickerDialog;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 254
    add-int/lit8 v5, v5, 0x1

    .line 250
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 257
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v2, deleteItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Lcom/android/server/sec/ClippedDataPickerGridView;

    invoke-virtual {v6, v2}, Lcom/android/server/sec/ClippedDataPickerGridView;->setDeletedItems(Ljava/util/ArrayList;)V

    .line 262
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;
    invoke-static {v6}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$300(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/IClipboardDataUiEvent;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/sec/clipboard/IClipboardDataUiEvent;->removeItem(I)V

    .line 263
    sget v6, Lcom/android/server/sec/ClippedDataPickerDialog;->CHILD_COUNT:I

    add-int/lit8 v6, v6, -0x1

    sput v6, Lcom/android/server/sec/ClippedDataPickerDialog;->CHILD_COUNT:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 266
    .end local v2           #deleteItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v3

    .line 268
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 272
    .end local v3           #e:Landroid/os/RemoteException;
    :cond_5
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->access$400(Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x1040777

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 275
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v6}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v6

    if-nez v6, :cond_0

    .line 277
    :try_start_1
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    invoke-virtual {v6}, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 278
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->windowMode:I

    and-int/2addr v6, v10

    if-ne v6, v10, :cond_6

    .line 279
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #calls: Lcom/android/server/sec/ClippedDataPickerDialog;->dismissDialog()V
    invoke-static {v6}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$500(Lcom/android/server/sec/ClippedDataPickerDialog;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 283
    .end local v0           #am:Landroid/app/ActivityManager;
    :catch_1
    move-exception v3

    .line 284
    .local v3, e:Ljava/lang/Exception;
    const-string v6, "ClipboardServiceEx"

    const-string v7, "Failed to check multiwindow style:"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 286
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v6}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    goto/16 :goto_0

    .line 281
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #am:Landroid/app/ActivityManager;
    :cond_6
    :try_start_2
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;

    iget-object v6, v6, Lcom/android/server/sec/ClippedDataPickerDialog$ClearConfirmDialog;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v6}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 289
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #count:I
    .end local v4           #i:I
    .end local v5           #protectCount:I
    :cond_7
    const/4 v6, -0x2

    if-ne p2, v6, :cond_8

    .line 290
    const-string v6, "ClipboardServiceEx"

    const-string v7, "pressed CANCEL"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 292
    :cond_8
    const-string v6, "ClipboardServiceEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pressed invalid button. arg1 :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
