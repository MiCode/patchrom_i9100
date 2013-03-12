.class Landroid/app/WallpaperManager$Globals;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Globals"
.end annotation


# static fields
.field private static final MSG_CLEAR_WALLPAPER:I = 0x1


# instance fields
.field private mDefaultWallpaper:Landroid/graphics/Bitmap;

.field private final mHandler:Landroid/os/Handler;

.field private mService:Landroid/app/IWallpaperManager;

.field private mWallpaper:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .parameter "looper"

    .prologue
    .line 209
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 210
    const-string/jumbo v1, "wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 211
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 212
    new-instance v1, Landroid/app/WallpaperManager$Globals$1;

    invoke-direct {v1, p0, p1}, Landroid/app/WallpaperManager$Globals$1;-><init>(Landroid/app/WallpaperManager$Globals;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    .line 225
    return-void
.end method

.method static synthetic access$002(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$102(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    return-object v0
.end method

.method private getCurrentWallpaperLocked()Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 271
    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 272
    .local v5, params:Landroid/os/Bundle;
    iget-object v7, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v7, p0, v5}, Landroid/app/IWallpaperManager;->getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 273
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_0

    .line 274
    const-string/jumbo v7, "width"

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 275
    .local v6, width:I
    const-string v7, "height"

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 278
    .local v3, height:I
    :try_start_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 279
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static {v7, v9, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 281
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-static {v0, v6, v3}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    .line 286
    :try_start_2
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 295
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v3           #height:I
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #params:Landroid/os/Bundle;
    .end local v6           #width:I
    :goto_0
    return-object v7

    .line 282
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v3       #height:I
    .restart local v5       #params:Landroid/os/Bundle;
    .restart local v6       #width:I
    :catch_0
    move-exception v1

    .line 283
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_3
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Can\'t decode file"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 286
    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v3           #height:I
    .end local v5           #params:Landroid/os/Bundle;
    .end local v6           #width:I
    :cond_0
    :goto_1
    move-object v7, v8

    .line 295
    goto :goto_0

    .line 285
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v3       #height:I
    .restart local v5       #params:Landroid/os/Bundle;
    .restart local v6       #width:I
    :catchall_0
    move-exception v7

    .line 286
    :try_start_5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 285
    :goto_2
    :try_start_6
    throw v7
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 292
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v3           #height:I
    .end local v5           #params:Landroid/os/Bundle;
    .end local v6           #width:I
    :catch_1
    move-exception v7

    goto :goto_1

    .line 287
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    .restart local v3       #height:I
    .restart local v5       #params:Landroid/os/Bundle;
    .restart local v6       #width:I
    :catch_2
    move-exception v9

    goto :goto_2

    .restart local v1       #e:Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v7

    goto :goto_1

    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v4       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_4
    move-exception v8

    goto :goto_0
.end method

.method private getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 25
    .parameter "context"

    .prologue
    .line 300
    const/4 v10, 0x0

    .line 303
    .local v10, is:Ljava/io/InputStream;
    :try_start_0
    const-string v4, "/carrier/data/app/WallpaperChooser/Customization_DefaultBackground.jpg"

    .line 304
    .local v4, customWpFilePath:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 305
    .local v3, custWpFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->length()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-wide v21

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-lez v21, :cond_3

    .line 307
    :try_start_1
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    .line 314
    .end local v10           #is:Ljava/io/InputStream;
    .local v11, is:Ljava/io/InputStream;
    :goto_0
    if-nez v11, :cond_7

    .line 315
    :try_start_2
    const-string v5, "/system/wallpaper/default_wallpaper/"

    .line 316
    .local v5, defaultWpFilePath:Ljava/lang/String;
    const-string v6, "/system/csc_contents/"

    .line 317
    .local v6, defaultWpFilePathMultiCSC:Ljava/lang/String;
    const/16 v18, 0x0

    .line 319
    .local v18, wpFileMultiCSC:Ljava/io/File;
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 320
    .local v20, wpFilePathMultiCSC:Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v17

    .line 321
    .local v17, wpFileListMultiCSC:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 323
    .local v12, isDefaultWallpaperInMultiCsc:Z
    if-eqz v17, :cond_1

    .line 326
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_0

    .line 327
    aget-object v21, v17, v9

    const-string v22, "default_wallpaper"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 328
    const/4 v12, 0x1

    .line 333
    :cond_0
    if-eqz v12, :cond_1

    .line 334
    new-instance v18, Ljava/io/File;

    .end local v18           #wpFileMultiCSC:Ljava/io/File;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget-object v22, v17, v9

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 338
    .end local v9           #i:I
    .restart local v18       #wpFileMultiCSC:Ljava/io/File;
    :cond_1
    const/16 v19, 0x0

    .line 339
    .local v19, wpFilePath:Ljava/io/File;
    if-eqz v12, :cond_5

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 340
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v21

    const-string v22, "getDefaultWallpaperLocked() symbolic link is used."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v19, Ljava/io/File;

    .end local v19           #wpFilePath:Ljava/io/File;
    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 347
    .restart local v19       #wpFilePath:Ljava/io/File;
    :goto_2
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v16

    .line 348
    .local v16, wpFileList:[Ljava/lang/String;
    if-eqz v16, :cond_7

    .line 349
    const/4 v15, 0x0

    .line 350
    .local v15, wpFile:Ljava/io/File;
    if-eqz v12, :cond_6

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_6

    .line 351
    move-object/from16 v15, v18

    .line 352
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "getDefaultWallpaperLocked(). symbolic link path is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :goto_3
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-virtual {v15}, Ljava/io/File;->length()J
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_7

    move-result-wide v21

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-lez v21, :cond_7

    .line 360
    :try_start_3
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_7

    .line 369
    .end local v5           #defaultWpFilePath:Ljava/lang/String;
    .end local v6           #defaultWpFilePathMultiCSC:Ljava/lang/String;
    .end local v11           #is:Ljava/io/InputStream;
    .end local v12           #isDefaultWallpaperInMultiCsc:Z
    .end local v15           #wpFile:Ljava/io/File;
    .end local v16           #wpFileList:[Ljava/lang/String;
    .end local v17           #wpFileListMultiCSC:[Ljava/lang/String;
    .end local v18           #wpFileMultiCSC:Ljava/io/File;
    .end local v19           #wpFilePath:Ljava/io/File;
    .end local v20           #wpFilePathMultiCSC:Ljava/io/File;
    .restart local v10       #is:Ljava/io/InputStream;
    :goto_4
    if-nez v10, :cond_2

    .line 370
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x1080232

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    .line 374
    :cond_2
    if-eqz v10, :cond_8

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/app/IWallpaperManager;->getWidthHint()I

    move-result v14

    .line 376
    .local v14, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/app/IWallpaperManager;->getHeightHint()I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v8

    .line 379
    .local v8, height:I
    :try_start_5
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 380
    .local v13, options:Landroid/graphics/BitmapFactory$Options;
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-static {v10, v0, v13}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 381
    .local v2, bm:Landroid/graphics/Bitmap;
    invoke-static {v2, v14, v8}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v21

    .line 386
    :try_start_6
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    .line 395
    .end local v2           #bm:Landroid/graphics/Bitmap;
    .end local v3           #custWpFile:Ljava/io/File;
    .end local v4           #customWpFilePath:Ljava/lang/String;
    .end local v8           #height:I
    .end local v13           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v14           #width:I
    :goto_5
    return-object v21

    .line 308
    .restart local v3       #custWpFile:Ljava/io/File;
    .restart local v4       #customWpFilePath:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 309
    .local v7, e:Ljava/io/IOException;
    :try_start_7
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v21

    const-string v22, "Chameleon Wallpaper FileInputStream error"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    .end local v7           #e:Ljava/io/IOException;
    :cond_3
    move-object v11, v10

    .end local v10           #is:Ljava/io/InputStream;
    .restart local v11       #is:Ljava/io/InputStream;
    goto/16 :goto_0

    .line 326
    .restart local v5       #defaultWpFilePath:Ljava/lang/String;
    .restart local v6       #defaultWpFilePathMultiCSC:Ljava/lang/String;
    .restart local v9       #i:I
    .restart local v12       #isDefaultWallpaperInMultiCsc:Z
    .restart local v17       #wpFileListMultiCSC:[Ljava/lang/String;
    .restart local v18       #wpFileMultiCSC:Ljava/io/File;
    .restart local v20       #wpFilePathMultiCSC:Ljava/io/File;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 344
    .end local v9           #i:I
    .restart local v19       #wpFilePath:Ljava/io/File;
    :cond_5
    :try_start_8
    new-instance v19, Ljava/io/File;

    .end local v19           #wpFilePath:Ljava/io/File;
    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v19       #wpFilePath:Ljava/io/File;
    goto/16 :goto_2

    .line 355
    .restart local v15       #wpFile:Ljava/io/File;
    .restart local v16       #wpFileList:[Ljava/lang/String;
    :cond_6
    new-instance v15, Ljava/io/File;

    .end local v15           #wpFile:Ljava/io/File;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x0

    aget-object v22, v16, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v15       #wpFile:Ljava/io/File;
    goto/16 :goto_3

    .line 361
    :catch_1
    move-exception v7

    .line 362
    .restart local v7       #e:Ljava/io/IOException;
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v21

    const-string v22, "CSC Wallpaper FileInputStream error"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_7

    .end local v5           #defaultWpFilePath:Ljava/lang/String;
    .end local v6           #defaultWpFilePathMultiCSC:Ljava/lang/String;
    .end local v7           #e:Ljava/io/IOException;
    .end local v12           #isDefaultWallpaperInMultiCsc:Z
    .end local v15           #wpFile:Ljava/io/File;
    .end local v16           #wpFileList:[Ljava/lang/String;
    .end local v17           #wpFileListMultiCSC:[Ljava/lang/String;
    .end local v18           #wpFileMultiCSC:Ljava/io/File;
    .end local v19           #wpFilePath:Ljava/io/File;
    .end local v20           #wpFilePathMultiCSC:Ljava/io/File;
    :cond_7
    move-object v10, v11

    .end local v11           #is:Ljava/io/InputStream;
    .restart local v10       #is:Ljava/io/InputStream;
    goto/16 :goto_4

    .line 382
    .restart local v8       #height:I
    .restart local v14       #width:I
    :catch_2
    move-exception v7

    .line 383
    .local v7, e:Ljava/lang/OutOfMemoryError;
    :try_start_9
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v21

    const-string v22, "Can\'t decode stream"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 386
    :try_start_a
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_3

    .line 395
    .end local v3           #custWpFile:Ljava/io/File;
    .end local v4           #customWpFilePath:Ljava/lang/String;
    .end local v7           #e:Ljava/lang/OutOfMemoryError;
    .end local v8           #height:I
    .end local v14           #width:I
    :cond_8
    :goto_6
    const/16 v21, 0x0

    goto :goto_5

    .line 385
    .restart local v3       #custWpFile:Ljava/io/File;
    .restart local v4       #customWpFilePath:Ljava/lang/String;
    .restart local v8       #height:I
    .restart local v14       #width:I
    :catchall_0
    move-exception v21

    .line 386
    :try_start_b
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_3

    .line 385
    :goto_7
    :try_start_c
    throw v21
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_3

    .line 392
    .end local v3           #custWpFile:Ljava/io/File;
    .end local v4           #customWpFilePath:Ljava/lang/String;
    .end local v8           #height:I
    .end local v14           #width:I
    :catch_3
    move-exception v21

    goto :goto_6

    .line 387
    .restart local v3       #custWpFile:Ljava/io/File;
    .restart local v4       #customWpFilePath:Ljava/lang/String;
    .restart local v8       #height:I
    .restart local v14       #width:I
    :catch_4
    move-exception v22

    goto :goto_7

    .restart local v7       #e:Ljava/lang/OutOfMemoryError;
    :catch_5
    move-exception v21

    goto :goto_6

    .end local v7           #e:Ljava/lang/OutOfMemoryError;
    .restart local v2       #bm:Landroid/graphics/Bitmap;
    .restart local v13       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_6
    move-exception v22

    goto :goto_5

    .line 392
    .end local v2           #bm:Landroid/graphics/Bitmap;
    .end local v8           #height:I
    .end local v10           #is:Ljava/io/InputStream;
    .end local v13           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v14           #width:I
    .restart local v11       #is:Ljava/io/InputStream;
    :catch_7
    move-exception v21

    move-object v10, v11

    .end local v11           #is:Ljava/io/InputStream;
    .restart local v10       #is:Ljava/io/InputStream;
    goto :goto_6
.end method


# virtual methods
.method public forgetLoadedWallpaper()V
    .locals 1

    .prologue
    .line 263
    monitor-enter p0

    .line 264
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 266
    monitor-exit p0

    .line 267
    return-void

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onWallpaperChanged()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 234
    return-void
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "context"
    .parameter "returnDefault"

    .prologue
    .line 237
    monitor-enter p0

    .line 238
    :try_start_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    .line 258
    :goto_0
    return-object v1

    .line 241
    :cond_0
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 242
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 259
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 244
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    :try_start_2
    invoke-direct {p0}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    .line 250
    :goto_1
    if-eqz p2, :cond_3

    .line 251
    :try_start_3
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 252
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 253
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No memory load current wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 255
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 258
    :cond_3
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
