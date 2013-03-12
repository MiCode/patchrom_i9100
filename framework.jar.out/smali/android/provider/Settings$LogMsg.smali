.class public Landroid/provider/Settings$LogMsg;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogMsg"
.end annotation


# static fields
.field private static final PROVISION_LOG_FILE_PATH:Ljava/lang/String; = "/data/log/SettingsProviderProvisionLog.txt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 684
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeProvisionLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "name"
    .parameter "value"
    .parameter "msg"

    .prologue
    .line 687
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 688
    .local v1, now:Ljava/util/Calendar;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 690
    .local v3, output_str:Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v4, "/data/log/SettingsProviderProvisionLog.txt"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 691
    .local v0, file:Ljava/io/File;
    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v5, "UTF-8"

    invoke-direct {v2, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 692
    .local v2, osw:Ljava/io/OutputStreamWriter;
    invoke-virtual {v2, v3}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 693
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    .end local v0           #file:Ljava/io/File;
    .end local v2           #osw:Ljava/io/OutputStreamWriter;
    :goto_0
    return-void

    .line 694
    :catch_0
    move-exception v4

    goto :goto_0
.end method
