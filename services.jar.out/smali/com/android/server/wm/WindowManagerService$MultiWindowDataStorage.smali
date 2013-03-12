.class Lcom/android/server/wm/WindowManagerService$MultiWindowDataStorage;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiWindowDataStorage"
.end annotation


# static fields
.field public static final SAVE_FNAME_ARRANGE:Ljava/lang/String; = "arrangemode"

.field public static final TAG:Ljava/lang/String; = "MultiWindowDataStorage"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1228
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Ljava/io/File;Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .parameter "dir"
    .parameter "fname"

    .prologue
    .line 1234
    const/4 v0, 0x0

    .line 1235
    .local v0, br:Ljava/io/BufferedReader;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1238
    .local v5, strArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 1241
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, s:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1242
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1244
    .end local v3           #s:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 1245
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .local v2, e:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v6, "MultiWindowDataStorage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " file does not exist."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1248
    if-eqz v0, :cond_0

    .line 1249
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1256
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_4

    .line 1257
    const/4 v6, 0x0

    .line 1262
    :goto_3
    return-object v6

    .line 1248
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #s:Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    .line 1249
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    move-object v0, v1

    .line 1253
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2

    .line 1251
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 1252
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 1254
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2

    .line 1251
    .end local v3           #s:Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 1252
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1247
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 1248
    :goto_4
    if-eqz v0, :cond_3

    .line 1249
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1253
    :cond_3
    :goto_5
    throw v6

    .line 1251
    :catch_3
    move-exception v2

    .line 1252
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 1260
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v4, v6, [Ljava/lang/String;

    .line 1262
    .local v4, str:[Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    goto :goto_3

    .line 1247
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #str:[Ljava/lang/String;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_4

    .line 1244
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method public static store(Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 9
    .parameter "dir"
    .parameter "fname"
    .parameter "str"

    .prologue
    .line 1266
    const/4 v1, 0x0

    .line 1269
    .local v1, bw:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1270
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .local v2, bw:Ljava/io/BufferedWriter;
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    :try_start_1
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v6, v0, v4

    .line 1271
    .local v6, s:Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1272
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 1270
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1274
    .end local v6           #s:Ljava/lang/String;
    :cond_0
    const/4 v7, 0x1

    .line 1279
    if-eqz v2, :cond_1

    .line 1280
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    move-object v1, v2

    .line 1286
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    :goto_2
    return v7

    .line 1282
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :catch_0
    move-exception v3

    .line 1283
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1275
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #bw:Ljava/io/BufferedWriter;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    :catch_1
    move-exception v3

    .line 1276
    .restart local v3       #e:Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1279
    if-eqz v1, :cond_2

    .line 1280
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1286
    :cond_2
    :goto_4
    const/4 v7, 0x0

    goto :goto_2

    .line 1282
    :catch_2
    move-exception v3

    .line 1283
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 1278
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 1279
    :goto_5
    if-eqz v1, :cond_3

    .line 1280
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1284
    :cond_3
    :goto_6
    throw v7

    .line 1282
    :catch_3
    move-exception v3

    .line 1283
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 1278
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    goto :goto_5

    .line 1275
    .end local v1           #bw:Ljava/io/BufferedWriter;
    .restart local v2       #bw:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v3

    move-object v1, v2

    .end local v2           #bw:Ljava/io/BufferedWriter;
    .restart local v1       #bw:Ljava/io/BufferedWriter;
    goto :goto_3
.end method
