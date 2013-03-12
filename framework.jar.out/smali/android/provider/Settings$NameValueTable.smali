.class public Landroid/provider/Settings$NameValueTable;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NameValueTable"
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "name"

.field public static final VALUE:Ljava/lang/String; = "value"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "name"

    .prologue
    .line 735
    invoke-static {p0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected static putString(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "resolver"
    .parameter "uri"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 711
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 712
    const-string v4, "device_provisioned"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 713
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 714
    .local v0, arrayOutputStream:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 715
    .local v2, pinrtStream:Ljava/io/PrintStream;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 716
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, p3, v4}, Landroid/provider/Settings$LogMsg;->writeProvisionLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    .end local v0           #arrayOutputStream:Ljava/io/ByteArrayOutputStream;
    .end local v2           #pinrtStream:Ljava/io/PrintStream;
    :cond_0
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 724
    .local v3, values:Landroid/content/ContentValues;
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    invoke-virtual {p0, p1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    const/4 v4, 0x1

    .line 730
    .end local v3           #values:Landroid/content/ContentValues;
    :goto_0
    return v4

    .line 728
    :catch_0
    move-exception v1

    .line 729
    .local v1, e:Landroid/database/SQLException;
    const-string v4, "Settings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t set key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 730
    const/4 v4, 0x0

    goto :goto_0
.end method
