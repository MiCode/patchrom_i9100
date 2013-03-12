.class final Lcom/android/server/DrmEventService$OpenDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DrmEventService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DrmEventService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OpenDatabaseHelper"
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "drmdatabase.db"

.field private static final DATABASE_VERSION:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/DrmEventService;


# direct methods
.method constructor <init>(Lcom/android/server/DrmEventService;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 1391
    iput-object p1, p0, Lcom/android/server/DrmEventService$OpenDatabaseHelper;->this$0:Lcom/android/server/DrmEventService;

    .line 1392
    const-string v0, "drmdatabase.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 1393
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 1399
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 1405
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1406
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldV"
    .parameter "newV"

    .prologue
    .line 1414
    sget-boolean v0, Lcom/android/server/DrmEventService;->isLogEnabled:Z

    if-eqz v0, :cond_0

    .line 1415
    const-string v0, "DrmEventService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading downloads database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    :cond_0
    return-void
.end method
