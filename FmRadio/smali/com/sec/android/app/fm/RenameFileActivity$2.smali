.class Lcom/sec/android/app/fm/RenameFileActivity$2;
.super Ljava/lang/Object;
.source "RenameFileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/RenameFileActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/RenameFileActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/RenameFileActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sec/android/app/fm/RenameFileActivity$2;->this$0:Lcom/sec/android/app/fm/RenameFileActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 15
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 99
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_3

    .line 100
    invoke-static {}, Lcom/sec/android/app/fm/RenameFileActivity;->access$000()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Rename"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v12, p0, Lcom/sec/android/app/fm/RenameFileActivity$2;->this$0:Lcom/sec/android/app/fm/RenameFileActivity;

    #getter for: Lcom/sec/android/app/fm/RenameFileActivity;->mSelectedFilePath:Ljava/lang/String;
    invoke-static {v12}, Lcom/sec/android/app/fm/RenameFileActivity;->access$100(Lcom/sec/android/app/fm/RenameFileActivity;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_0

    .line 103
    iget-object v12, p0, Lcom/sec/android/app/fm/RenameFileActivity$2;->this$0:Lcom/sec/android/app/fm/RenameFileActivity;

    iget-object v13, p0, Lcom/sec/android/app/fm/RenameFileActivity$2;->this$0:Lcom/sec/android/app/fm/RenameFileActivity;

    #getter for: Lcom/sec/android/app/fm/RenameFileActivity;->mSavedSelectedFilePath:Ljava/lang/String;
    invoke-static {v13}, Lcom/sec/android/app/fm/RenameFileActivity;->access$200(Lcom/sec/android/app/fm/RenameFileActivity;)Ljava/lang/String;

    move-result-object v13

    #setter for: Lcom/sec/android/app/fm/RenameFileActivity;->mSelectedFilePath:Ljava/lang/String;
    invoke-static {v12, v13}, Lcom/sec/android/app/fm/RenameFileActivity;->access$102(Lcom/sec/android/app/fm/RenameFileActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    :cond_0
    iget-object v12, p0, Lcom/sec/android/app/fm/RenameFileActivity$2;->this$0:Lcom/sec/android/app/fm/RenameFileActivity;

    #getter for: Lcom/sec/android/app/fm/RenameFileActivity;->mSelectedFilePath:Ljava/lang/String;
    invoke-static {v12}, Lcom/sec/android/app/fm/RenameFileActivity;->access$100(Lcom/sec/android/app/fm/RenameFileActivity;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 106
    iget-object v12, p0, Lcom/sec/android/app/fm/RenameFileActivity$2;->this$0:Lcom/sec/android/app/fm/RenameFileActivity;

    #getter for: Lcom/sec/android/app/fm/RenameFileActivity;->mSelectedFilePath:Ljava/lang/String;
    invoke-static {v12}, Lcom/sec/android/app/fm/RenameFileActivity;->access$100(Lcom/sec/android/app/fm/RenameFileActivity;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    .line 107
    .local v5, len:I
    iget-object v12, p0, Lcom/sec/android/app/fm/RenameFileActivity$2;->this$0:Lcom/sec/android/app/fm/RenameFileActivity;

    #getter for: Lcom/sec/android/app/fm/RenameFileActivity;->mSelectedFilePath:Ljava/lang/String;
    invoke-static {v12}, Lcom/sec/android/app/fm/RenameFileActivity;->access$100(Lcom/sec/android/app/fm/RenameFileActivity;)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x2f

    invoke-virtual {v12, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    add-int/lit8 v4, v12, 0x1

    .line 108
    .local v4, fileNameStart:I
    iget-object v12, p0, Lcom/sec/android/app/fm/RenameFileActivity$2;->this$0:Lcom/sec/android/app/fm/RenameFileActivity;

    #getter for: Lcom/sec/android/app/fm/RenameFileActivity;->mSelectedFilePath:Ljava/lang/String;
    invoke-static {v12}, Lcom/sec/android/app/fm/RenameFileActivity;->access$100(Lcom/sec/android/app/fm/RenameFileActivity;)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 109
    .local v3, fileNameEnd:I
    if-ltz v4, :cond_5

    if-gt v4, v5, :cond_5

    if-ltz v3, :cond_5

    if-gt v3, v5, :cond_5

    move-object/from16 v12, p1

    .line 110
    check-cast v12, Lcom/sec/android/app/fm/ui/RenameDialog;

    invoke-virtual {v12}, Lcom/sec/android/app/fm/ui/RenameDialog;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 113
    .local v7, newFileName:Ljava/lang/String;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_2

    .line 114
    :cond_1
    invoke-static {}, Lcom/sec/android/app/fm/RenameFileActivity;->access$000()Ljava/lang/String;

    move-result-object v12

    const-string v13, "empty file name"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v12, p0, Lcom/sec/android/app/fm/RenameFileActivity$2;->this$0:Lcom/sec/android/app/fm/RenameFileActivity;

    #getter for: Lcom/sec/android/app/fm/RenameFileActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v12}, Lcom/sec/android/app/fm/RenameFileActivity;->access$300(Lcom/sec/android/app/fm/RenameFileActivity;)Landroid/widget/Toast;

    move-result-object v12

    const v13, 0x7f0a00c1

    invoke-virtual {v12, v13}, Landroid/widget/Toast;->setText(I)V

    .line 116
    iget-object v12, p0, Lcom/sec/android/app/fm/RenameFileActivity$2;->this$0:Lcom/sec/android/app/fm/RenameFileActivity;

    #getter for: Lcom/sec/android/app/fm/RenameFileActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v12}, Lcom/sec/android/app/fm/RenameFileActivity;->access$300(Lcom/sec/android/app/fm/RenameFileActivity;)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 159
    .end local v3           #fileNameEnd:I
    .end local v4           #fileNameStart:I
    .end local v5           #len:I
    .end local v7           #newFileName:Ljava/lang/String;
    :goto_0
    return-void

    .line 120
    .restart local v3       #fileNameEnd:I
    .restart local v4       #fileNameStart:I
    .restart local v5       #len:I
    .restart local v7       #newFileName:Ljava/lang/String;
    :cond_2
    iget-object v12, p0, Lcom/sec/android/app/fm/RenameFileActivity$2;->this$0:Lcom/sec/android/app/fm/RenameFileActivity;

    #getter for: Lcom/sec/android/app/fm/RenameFileActivity;->mSelectedFilePath:Ljava/lang/String;
    invoke-static {v12}, Lcom/sec/android/app/fm/RenameFileActivity;->access$100(Lcom/sec/android/app/fm/RenameFileActivity;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 121
    .local v9, oldFileName:Ljava/lang/String;
    iget-object v12, p0, Lcom/sec/android/app/fm/RenameFileActivity$2;->this$0:Lcom/sec/android/app/fm/RenameFileActivity;

    #getter for: Lcom/sec/android/app/fm/RenameFileActivity;->mSelectedFilePath:Ljava/lang/String;
    invoke-static {v12}, Lcom/sec/android/app/fm/RenameFileActivity;->access$100(Lcom/sec/android/app/fm/RenameFileActivity;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v9, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 123
    .local v8, newFilePath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v12, p0, Lcom/sec/android/app/fm/RenameFileActivity$2;->this$0:Lcom/sec/android/app/fm/RenameFileActivity;

    #getter for: Lcom/sec/android/app/fm/RenameFileActivity;->mSelectedFilePath:Ljava/lang/String;
    invoke-static {v12}, Lcom/sec/android/app/fm/RenameFileActivity;->access$100(Lcom/sec/android/app/fm/RenameFileActivity;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v2, file:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v6, newFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_4

    .line 127
    invoke-static {}, Lcom/sec/android/app/fm/RenameFileActivity;->access$000()Ljava/lang/String;

    move-result-object v12

    const-string v13, "renamed"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {v2, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 133
    iget-object v12, p0, Lcom/sec/android/app/fm/RenameFileActivity$2;->this$0:Lcom/sec/android/app/fm/RenameFileActivity;

    invoke-virtual {v12}, Lcom/sec/android/app/fm/RenameFileActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 134
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 135
    .local v11, value:Landroid/content/ContentValues;
    const-string v12, "title"

    invoke-virtual {v11, v12, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v12, "_data"

    invoke-virtual {v11, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v12, 0x1

    new-array v10, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/sec/android/app/fm/RenameFileActivity$2;->this$0:Lcom/sec/android/app/fm/RenameFileActivity;

    #getter for: Lcom/sec/android/app/fm/RenameFileActivity;->mSelectedFilePath:Ljava/lang/String;
    invoke-static {v13}, Lcom/sec/android/app/fm/RenameFileActivity;->access$100(Lcom/sec/android/app/fm/RenameFileActivity;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v12

    .line 139
    .local v10, selectionArgs:[Ljava/lang/String;
    sget-object v12, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v13, "_data LIKE ?"

    invoke-virtual {v1, v12, v11, v13, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 157
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #fileNameEnd:I
    .end local v4           #fileNameStart:I
    .end local v5           #len:I
    .end local v6           #newFile:Ljava/io/File;
    .end local v7           #newFileName:Ljava/lang/String;
    .end local v8           #newFilePath:Ljava/lang/String;
    .end local v9           #oldFileName:Ljava/lang/String;
    .end local v10           #selectionArgs:[Ljava/lang/String;
    .end local v11           #value:Landroid/content/ContentValues;
    :cond_3
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 143
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #fileNameEnd:I
    .restart local v4       #fileNameStart:I
    .restart local v5       #len:I
    .restart local v6       #newFile:Ljava/io/File;
    .restart local v7       #newFileName:Ljava/lang/String;
    .restart local v8       #newFilePath:Ljava/lang/String;
    .restart local v9       #oldFileName:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/sec/android/app/fm/RenameFileActivity;->access$000()Ljava/lang/String;

    move-result-object v12

    const-string v13, "file already exist"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v12, p0, Lcom/sec/android/app/fm/RenameFileActivity$2;->this$0:Lcom/sec/android/app/fm/RenameFileActivity;

    #getter for: Lcom/sec/android/app/fm/RenameFileActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v12}, Lcom/sec/android/app/fm/RenameFileActivity;->access$300(Lcom/sec/android/app/fm/RenameFileActivity;)Landroid/widget/Toast;

    move-result-object v12

    const v13, 0x7f0a00c0

    invoke-virtual {v12, v13}, Landroid/widget/Toast;->setText(I)V

    .line 145
    iget-object v12, p0, Lcom/sec/android/app/fm/RenameFileActivity$2;->this$0:Lcom/sec/android/app/fm/RenameFileActivity;

    #getter for: Lcom/sec/android/app/fm/RenameFileActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v12}, Lcom/sec/android/app/fm/RenameFileActivity;->access$300(Lcom/sec/android/app/fm/RenameFileActivity;)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 150
    .end local v2           #file:Ljava/io/File;
    .end local v6           #newFile:Ljava/io/File;
    .end local v7           #newFileName:Ljava/lang/String;
    .end local v8           #newFilePath:Ljava/lang/String;
    .end local v9           #oldFileName:Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/sec/android/app/fm/RenameFileActivity;->access$000()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "file name index error "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "~"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
