.class Lcom/sec/android/app/camera/Camera$28;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;

.field final synthetic val$et:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6760
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$28;->this$0:Lcom/sec/android/app/camera/Camera;

    iput-object p2, p0, Lcom/sec/android/app/camera/Camera$28;->val$et:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 6765
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$28;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v7, v7, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    sget-object v8, Lcom/sec/android/app/camera/Camera;->FILE_USER_PHOTO_TMP_PATH:Ljava/lang/String;

    if-ne v7, v8, :cond_0

    .line 6766
    const/4 v2, 0x0

    .line 6767
    .local v2, fOut:Ljava/io/FileOutputStream;
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 6768
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v7, Lcom/sec/android/app/camera/Camera;->FILE_USER_PHOTO_TMP_PATH:Ljava/lang/String;

    invoke-static {v7, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 6769
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v4, Ljava/io/File;

    sget-object v7, Lcom/sec/android/app/camera/Camera;->FILE_USER_PHOTO_PATH:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6771
    .local v4, file:Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .local v3, fOut:Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 6776
    .end local v3           #fOut:Ljava/io/FileOutputStream;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    :goto_0
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v0, v7, v8, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 6778
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 6783
    if-eqz v2, :cond_0

    .line 6785
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 6793
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .end local v4           #file:Ljava/io/File;
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$28;->this$0:Lcom/sec/android/app/camera/Camera;

    sget-object v8, Lcom/sec/android/app/camera/Camera;->FILE_USER_PHOTO_PATH:Ljava/lang/String;

    iput-object v8, v7, Lcom/sec/android/app/camera/Camera;->mPhotoPath:Ljava/lang/String;

    .line 6795
    :try_start_3
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$28;->val$et:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 6796
    .local v6, str_name:Ljava/lang/String;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    if-nez v6, :cond_3

    .line 6797
    :cond_2
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$28;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09012f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 6799
    :cond_3
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$28;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v7, v7, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v7, :cond_4

    .line 6800
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$28;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v7, v7, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    iget-object v8, p0, Lcom/sec/android/app/camera/Camera$28;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v8, v6}, Lcom/sec/android/app/camera/Camera;->produceGSPersonalSettingInfoValue(Ljava/lang/String;)Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/samsung/shareshot/IShareShotService;->setLocalPersonInfo(Lcom/samsung/dmc/ux/db/PersonalSettingInfo;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 6807
    .end local v6           #str_name:Ljava/lang/String;
    :cond_4
    :goto_2
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$28;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/sec/android/app/camera/Camera;->mNameChanged:Z

    .line 6808
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera$28;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/Camera;->removeDialog(I)V

    .line 6809
    return-void

    .line 6772
    .restart local v0       #b:Landroid/graphics/Bitmap;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    .restart local v4       #file:Ljava/io/File;
    .restart local v5       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    .line 6774
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 6779
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 6781
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 6783
    if-eqz v2, :cond_0

    .line 6785
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 6786
    :catch_2
    move-exception v7

    goto :goto_1

    .line 6783
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    if-eqz v2, :cond_5

    .line 6785
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 6788
    :cond_5
    :goto_3
    throw v7

    .line 6802
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .end local v4           #file:Ljava/io/File;
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v1

    .line 6804
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 6786
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #b:Landroid/graphics/Bitmap;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    .restart local v4       #file:Ljava/io/File;
    .restart local v5       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_4
    move-exception v7

    goto :goto_1

    :catch_5
    move-exception v8

    goto :goto_3
.end method
