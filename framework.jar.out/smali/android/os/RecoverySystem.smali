.class public Landroid/os/RecoverySystem;
.super Ljava/lang/Object;
.source "RecoverySystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/RecoverySystem$ProgressListener;
    }
.end annotation


# static fields
.field private static COMMAND_FILE:Ljava/io/File; = null

.field private static final DEFAULT_KEYSTORE:Ljava/io/File; = null

.field private static LAST_PREFIX:Ljava/lang/String; = null

.field private static LOG_FILE:Ljava/io/File; = null

.field private static LOG_FILE_MAX_LENGTH:I = 0x0

.field private static final PUBLISH_PROGRESS_INTERVAL_MS:J = 0x1f4L

.field private static RECOVERY_DIR:Ljava/io/File; = null

.field private static final TAG:Ljava/lang/String; = "RecoverySystem"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/security/otacerts.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    .line 71
    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    .line 72
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "command"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    .line 73
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    .line 74
    const-string v0, "last_"

    sput-object v0, Landroid/os/RecoverySystem;->LAST_PREFIX:Ljava/lang/String;

    .line 77
    const/high16 v0, 0x1

    sput v0, Landroid/os/RecoverySystem;->LOG_FILE_MAX_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method private RecoverySystem()V
    .locals 0

    .prologue
    .line 489
    return-void
.end method

.method private static bootCommand(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 418
    sget-object v3, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 419
    sget-object v3, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 420
    sget-object v3, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 422
    const/4 v2, 0x3

    .line 425
    .local v2, retry_count:I
    :cond_0
    new-instance v0, Ljava/io/RandomAccessFile;

    sget-object v3, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    const-string/jumbo v4, "rwd"

    invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 427
    .local v0, command:Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 428
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 430
    const-string v3, "RecoverySystem"

    const-string v4, "!@before fsync syscall!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V

    .line 432
    const-string v3, "RecoverySystem"

    const-string v4, "!@after fsync syscall!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 436
    add-int/lit8 v2, v2, -0x1

    .line 437
    sget-object v3, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 438
    const-string v3, "RecoverySystem"

    const-string v4, "COMMAND_FILE is already exist!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :goto_0
    const-string/jumbo v3, "power"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 446
    .local v1, pm:Landroid/os/PowerManager;
    const-string/jumbo v3, "nvrecovery"

    const-string/jumbo v4, "persist.sys.reboot.reason"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 447
    const-string v3, "RecoverySystem"

    const-string v4, "FactoryTest ->nvrecovery "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const-string/jumbo v3, "nvrecovery"

    invoke-virtual {v1, v3}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 453
    :goto_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Reboot failed (no permissions?)"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 434
    .end local v1           #pm:Landroid/os/PowerManager;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    throw v3

    .line 441
    :cond_1
    const-string v3, "RecoverySystem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retry_count : %d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    if-nez v2, :cond_0

    goto :goto_0

    .line 450
    .restart local v1       #pm:Landroid/os/PowerManager;
    :cond_2
    const-string/jumbo v3, "recovery"

    invoke-virtual {v1, v3}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static getTrustedCerts(Ljava/io/File;)Ljava/util/HashSet;
    .locals 7
    .parameter "keystore"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 98
    .local v4, trusted:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/security/cert/Certificate;>;"
    if-nez p0, :cond_0

    .line 99
    sget-object p0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    .line 101
    :cond_0
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 103
    .local v5, zip:Ljava/util/zip/ZipFile;
    :try_start_0
    const-string v6, "X.509"

    invoke-static {v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 104
    .local v0, cf:Ljava/security/cert/CertificateFactory;
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 105
    .local v1, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 106
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 107
    .local v2, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v5, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 109
    .local v3, is:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v0, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 111
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 115
    .end local v0           #cf:Ljava/security/cert/CertificateFactory;
    .end local v1           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    .end local v3           #is:Ljava/io/InputStream;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    throw v6

    .line 111
    .restart local v0       #cf:Ljava/security/cert/CertificateFactory;
    .restart local v1       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v2       #entry:Ljava/util/zip/ZipEntry;
    .restart local v3       #is:Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    .end local v3           #is:Ljava/io/InputStream;
    :cond_1
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    .line 117
    return-object v4
.end method

.method public static handleAftermath()Ljava/lang/String;
    .locals 8

    .prologue
    .line 464
    const/4 v3, 0x0

    .line 466
    .local v3, log:Ljava/lang/String;
    :try_start_0
    sget-object v5, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    sget v6, Landroid/os/RecoverySystem;->LOG_FILE_MAX_LENGTH:I

    neg-int v6, v6

    const-string v7, "...\n"

    invoke-static {v5, v6, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 475
    :goto_0
    sget-object v5, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 476
    .local v4, names:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-eqz v4, :cond_2

    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 477
    aget-object v5, v4, v2

    sget-object v6, Landroid/os/RecoverySystem;->LAST_PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 476
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 467
    .end local v2           #i:I
    .end local v4           #names:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 468
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v5, "RecoverySystem"

    const-string v6, "No recovery log file"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 469
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 470
    .local v0, e:Ljava/io/IOException;
    const-string v5, "RecoverySystem"

    const-string v6, "Error reading recovery log"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 478
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #i:I
    .restart local v4       #names:[Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/io/File;

    sget-object v5, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    aget-object v6, v4, v2

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 479
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_1

    .line 480
    const-string v5, "RecoverySystem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t delete: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 482
    :cond_1
    const-string v5, "RecoverySystem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 486
    .end local v1           #f:Ljava/io/File;
    :cond_2
    return-object v3
.end method

.method public static installPackage(Landroid/content/Context;Ljava/io/File;)V
    .locals 11
    .parameter "context"
    .parameter "packageFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    .line 327
    const/4 v5, 0x0

    .line 328
    .local v5, raf:Ljava/io/RandomAccessFile;
    const-string v0, "/cache/fota/fota.status"

    .line 331
    .local v0, FOTA_STATUS_FILE:Ljava/lang/String;
    :try_start_0
    const-string v7, "RecoverySystem"

    const-string v8, "installPackage(): generating fota.status"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string/jumbo v7, "rw"

    invoke-direct {v6, v0, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 338
    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .local v6, raf:Ljava/io/RandomAccessFile;
    if-eqz v6, :cond_2

    .line 340
    :try_start_1
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v5, v6

    .line 347
    .end local v6           #raf:Ljava/io/RandomAccessFile;
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    const/16 v7, 0x1ff

    invoke-static {v0, v7, v10, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 351
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    .line 352
    .local v4, filename:Ljava/lang/String;
    const-string v7, "RecoverySystem"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "!!! REBOOTING TO INSTALL "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " !!!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--update_package="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\r\n--carry_out=common_gota"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, arg:Ljava/lang/String;
    invoke-static {p0, v1}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;Ljava/lang/String;)V

    .line 355
    return-void

    .line 341
    .end local v1           #arg:Ljava/lang/String;
    .end local v4           #filename:Ljava/lang/String;
    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v3

    .line 342
    .local v3, ex1:Ljava/io/IOException;
    const-string v7, "RecoverySystem"

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v6

    .line 343
    .end local v6           #raf:Ljava/io/RandomAccessFile;
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 333
    .end local v3           #ex1:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 334
    .local v2, ex:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v7, "RecoverySystem"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "installPackage error : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 338
    if-eqz v5, :cond_0

    .line 340
    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 341
    :catch_2
    move-exception v3

    .line 342
    .restart local v3       #ex1:Ljava/io/IOException;
    const-string v7, "RecoverySystem"

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 335
    .end local v2           #ex:Ljava/io/FileNotFoundException;
    .end local v3           #ex1:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 336
    .local v2, ex:Ljava/io/IOException;
    :try_start_4
    const-string v7, "RecoverySystem"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "installPackage error : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 338
    if-eqz v5, :cond_0

    .line 340
    :try_start_5
    throw v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 341
    :catch_4
    move-exception v3

    .line 342
    .restart local v3       #ex1:Ljava/io/IOException;
    const-string v7, "RecoverySystem"

    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 338
    .end local v2           #ex:Ljava/io/IOException;
    .end local v3           #ex1:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    if-eqz v5, :cond_1

    .line 340
    :try_start_6
    throw v5
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 343
    :cond_1
    :goto_1
    throw v7

    .line 341
    :catch_5
    move-exception v3

    .line 342
    .restart local v3       #ex1:Ljava/io/IOException;
    const-string v8, "RecoverySystem"

    invoke-static {v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v3           #ex1:Ljava/io/IOException;
    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #raf:Ljava/io/RandomAccessFile;
    :cond_2
    move-object v5, v6

    .end local v6           #raf:Ljava/io/RandomAccessFile;
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    goto/16 :goto_0
.end method

.method public static rebootWipeCache(Landroid/content/Context;)V
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    const-string v0, "RecoverySystem"

    const-string v1, ":::: command -> wipe_cache"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const-string v0, "--wipe_cache"

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method public static rebootWipeCustomerPartition(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 409
    invoke-static {p0, p1}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;)V
    .locals 11
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 370
    new-instance v8, Landroid/os/ConditionVariable;

    invoke-direct {v8}, Landroid/os/ConditionVariable;-><init>()V

    .line 372
    .local v8, condition:Landroid/os/ConditionVariable;
    const-string v0, "RecoverySystem"

    const-string v2, ":::: command -> wipe_data"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MASTER_CLEAR_NOTIFICATION"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 375
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.permission.MASTER_CLEAR"

    new-instance v3, Landroid/os/RecoverySystem$1;

    invoke-direct {v3, v8}, Landroid/os/RecoverySystem$1;-><init>(Landroid/os/ConditionVariable;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 384
    invoke-virtual {v8}, Landroid/os/ConditionVariable;->block()V

    .line 386
    const-string/jumbo v0, "ro.crypto.state"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 387
    .local v9, cryptState1:Ljava/lang/String;
    const-string/jumbo v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 389
    .local v10, cryptState2:Ljava/lang/String;
    const-string v0, "encrypted"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    const-string v0, "--wipe_data\n--wipe_data_crypto"

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;Ljava/lang/String;)V

    .line 393
    :goto_0
    return-void

    .line 392
    :cond_0
    const-string v0, "--wipe_data"

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static verifyPackage(Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Ljava/io/File;)V
    .locals 46
    .parameter "packageFile"
    .parameter "listener"
    .parameter "deviceCertsZipFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v13

    .line 153
    .local v13, fileLen:J
    new-instance v27, Ljava/io/RandomAccessFile;

    const-string/jumbo v42, "r"

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 155
    .local v27, raf:Ljava/io/RandomAccessFile;
    const/16 v21, 0x0

    .line 156
    .local v21, lastPercent:I
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 157
    .local v22, lastPublishTime:J
    if-eqz p1, :cond_0

    .line 158
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    .line 161
    :cond_0
    const-wide/16 v42, 0x6

    sub-long v42, v13, v42

    move-object/from16 v0, v27

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 162
    const/16 v42, 0x6

    move/from16 v0, v42

    new-array v15, v0, [B

    .line 163
    .local v15, footer:[B
    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 165
    const/16 v42, 0x2

    aget-byte v42, v15, v42

    const/16 v43, -0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_1

    const/16 v42, 0x3

    aget-byte v42, v15, v42

    const/16 v43, -0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_2

    .line 166
    :cond_1
    new-instance v42, Ljava/security/SignatureException;

    const-string/jumbo v43, "no signature in file (no footer)"

    invoke-direct/range {v42 .. v43}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v42
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    .end local v15           #footer:[B
    .end local v22           #lastPublishTime:J
    .end local p2
    :catchall_0
    move-exception v42

    invoke-virtual/range {v27 .. v27}, Ljava/io/RandomAccessFile;->close()V

    throw v42

    .line 169
    .restart local v15       #footer:[B
    .restart local v22       #lastPublishTime:J
    .restart local p2
    :cond_2
    const/16 v42, 0x4

    :try_start_1
    aget-byte v42, v15, v42

    move/from16 v0, v42

    and-int/lit16 v0, v0, 0xff

    move/from16 v42, v0

    const/16 v43, 0x5

    aget-byte v43, v15, v43

    move/from16 v0, v43

    and-int/lit16 v0, v0, 0xff

    move/from16 v43, v0

    shl-int/lit8 v43, v43, 0x8

    or-int v8, v42, v43

    .line 170
    .local v8, commentSize:I
    const/16 v42, 0x0

    aget-byte v42, v15, v42

    move/from16 v0, v42

    and-int/lit16 v0, v0, 0xff

    move/from16 v42, v0

    const/16 v43, 0x1

    aget-byte v43, v15, v43

    move/from16 v0, v43

    and-int/lit16 v0, v0, 0xff

    move/from16 v43, v0

    shl-int/lit8 v43, v43, 0x8

    or-int v33, v42, v43

    .line 172
    .local v33, signatureStart:I
    add-int/lit8 v42, v8, 0x16

    move/from16 v0, v42

    new-array v12, v0, [B

    .line 173
    .local v12, eocd:[B
    add-int/lit8 v42, v8, 0x16

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v42, v0

    sub-long v42, v13, v42

    move-object/from16 v0, v27

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 174
    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 178
    const/16 v42, 0x0

    aget-byte v42, v12, v42

    const/16 v43, 0x50

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_3

    const/16 v42, 0x1

    aget-byte v42, v12, v42

    const/16 v43, 0x4b

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_3

    const/16 v42, 0x2

    aget-byte v42, v12, v42

    const/16 v43, 0x5

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_3

    const/16 v42, 0x3

    aget-byte v42, v12, v42

    const/16 v43, 0x6

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_4

    .line 180
    :cond_3
    new-instance v42, Ljava/security/SignatureException;

    const-string/jumbo v43, "no signature in file (bad footer)"

    invoke-direct/range {v42 .. v43}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 183
    :cond_4
    const/16 v16, 0x4

    .local v16, i:I
    :goto_0
    array-length v0, v12

    move/from16 v42, v0

    add-int/lit8 v42, v42, -0x3

    move/from16 v0, v16

    move/from16 v1, v42

    if-ge v0, v1, :cond_6

    .line 184
    aget-byte v42, v12, v16

    const/16 v43, 0x50

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_5

    add-int/lit8 v42, v16, 0x1

    aget-byte v42, v12, v42

    const/16 v43, 0x4b

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_5

    add-int/lit8 v42, v16, 0x2

    aget-byte v42, v12, v42

    const/16 v43, 0x5

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_5

    add-int/lit8 v42, v16, 0x3

    aget-byte v42, v12, v42

    const/16 v43, 0x6

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_5

    .line 186
    new-instance v42, Ljava/security/SignatureException;

    const-string v43, "EOCD marker found after start of EOCD"

    invoke-direct/range {v42 .. v43}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 183
    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 196
    :cond_6
    new-instance v4, Lorg/apache/harmony/security/asn1/BerInputStream;

    new-instance v42, Ljava/io/ByteArrayInputStream;

    add-int/lit8 v43, v8, 0x16

    sub-int v43, v43, v33

    move-object/from16 v0, v42

    move/from16 v1, v43

    move/from16 v2, v33

    invoke-direct {v0, v12, v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    move-object/from16 v0, v42

    invoke-direct {v4, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>(Ljava/io/InputStream;)V

    .line 198
    .local v4, bis:Lorg/apache/harmony/security/asn1/BerInputStream;
    sget-object v42, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    .line 199
    .local v18, info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;

    move-result-object v34

    .line 200
    .local v34, signedData:Lorg/apache/harmony/security/pkcs7/SignedData;
    if-nez v34, :cond_7

    .line 201
    new-instance v42, Ljava/io/IOException;

    const-string/jumbo v43, "signedData is null"

    invoke-direct/range {v42 .. v43}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 203
    :cond_7
    invoke-virtual/range {v34 .. v34}, Lorg/apache/harmony/security/pkcs7/SignedData;->getCertificates()Ljava/util/List;

    move-result-object v11

    .line 204
    .local v11, encCerts:Ljava/util/Collection;
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v42

    if-eqz v42, :cond_8

    .line 205
    new-instance v42, Ljava/io/IOException;

    const-string v43, "encCerts is empty"

    invoke-direct/range {v42 .. v43}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 209
    :cond_8
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 210
    .local v20, it:Ljava/util/Iterator;
    const/4 v7, 0x0

    .line 211
    .local v7, cert:Ljava/security/cert/X509Certificate;
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v42

    if-eqz v42, :cond_c

    .line 212
    new-instance v7, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    .end local v7           #cert:Ljava/security/cert/X509Certificate;
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lorg/apache/harmony/security/x509/Certificate;

    move-object/from16 v0, v42

    invoke-direct {v7, v0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Lorg/apache/harmony/security/x509/Certificate;)V

    .line 217
    .restart local v7       #cert:Ljava/security/cert/X509Certificate;
    invoke-virtual/range {v34 .. v34}, Lorg/apache/harmony/security/pkcs7/SignedData;->getSignerInfos()Ljava/util/List;

    move-result-object v31

    .line 219
    .local v31, sigInfos:Ljava/util/List;
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->isEmpty()Z

    move-result v42

    if-nez v42, :cond_d

    .line 220
    const/16 v42, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/harmony/security/pkcs7/SignerInfo;

    .line 228
    .local v30, sigInfo:Lorg/apache/harmony/security/pkcs7/SignerInfo;
    if-nez p2, :cond_9

    sget-object p2, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    .end local p2
    :cond_9
    invoke-static/range {p2 .. p2}, Landroid/os/RecoverySystem;->getTrustedCerts(Ljava/io/File;)Ljava/util/HashSet;

    move-result-object v40

    .line 231
    .local v40, trusted:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/security/cert/Certificate;>;"
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v32

    .line 232
    .local v32, signatureKey:Ljava/security/PublicKey;
    const/16 v41, 0x0

    .line 233
    .local v41, verified:Z
    invoke-virtual/range {v40 .. v40}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_a
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v42

    if-eqz v42, :cond_b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/Certificate;

    .line 234
    .local v6, c:Ljava/security/cert/Certificate;
    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_a

    .line 235
    const/16 v41, 0x1

    .line 239
    .end local v6           #c:Ljava/security/cert/Certificate;
    :cond_b
    if-nez v41, :cond_e

    .line 240
    new-instance v42, Ljava/security/SignatureException;

    const-string/jumbo v43, "signature doesn\'t match any trusted key"

    invoke-direct/range {v42 .. v43}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 214
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v30           #sigInfo:Lorg/apache/harmony/security/pkcs7/SignerInfo;
    .end local v31           #sigInfos:Ljava/util/List;
    .end local v32           #signatureKey:Ljava/security/PublicKey;
    .end local v40           #trusted:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/security/cert/Certificate;>;"
    .end local v41           #verified:Z
    .restart local p2
    :cond_c
    new-instance v42, Ljava/security/SignatureException;

    const-string/jumbo v43, "signature contains no certificates"

    invoke-direct/range {v42 .. v43}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 222
    .restart local v31       #sigInfos:Ljava/util/List;
    :cond_d
    new-instance v42, Ljava/io/IOException;

    const-string/jumbo v43, "no signer infos!"

    invoke-direct/range {v42 .. v43}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 253
    .end local p2
    .restart local v17       #i$:Ljava/util/Iterator;
    .restart local v30       #sigInfo:Lorg/apache/harmony/security/pkcs7/SignerInfo;
    .restart local v32       #signatureKey:Ljava/security/PublicKey;
    .restart local v40       #trusted:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/security/cert/Certificate;>;"
    .restart local v41       #verified:Z
    :cond_e
    invoke-virtual/range {v30 .. v30}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v9

    .line 254
    .local v9, da:Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getDigestEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v10

    .line 255
    .local v10, dea:Ljava/lang/String;
    const/4 v3, 0x0

    .line 256
    .local v3, alg:Ljava/lang/String;
    if-eqz v9, :cond_f

    if-nez v10, :cond_13

    .line 259
    :cond_f
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v3

    .line 263
    :goto_1
    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v29

    .line 264
    .local v29, sig:Ljava/security/Signature;
    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    .line 268
    int-to-long v0, v8

    move-wide/from16 v42, v0

    sub-long v42, v13, v42

    const-wide/16 v44, 0x2

    sub-long v38, v42, v44

    .line 269
    .local v38, toRead:J
    const-wide/16 v36, 0x0

    .line 270
    .local v36, soFar:J
    const-wide/16 v42, 0x0

    move-object/from16 v0, v27

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 271
    const/16 v42, 0x1000

    move/from16 v0, v42

    new-array v5, v0, [B

    .line 272
    .local v5, buffer:[B
    const/16 v19, 0x0

    .line 273
    .local v19, interrupted:Z
    :cond_10
    :goto_2
    cmp-long v42, v36, v38

    if-gez v42, :cond_11

    .line 274
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v19

    .line 275
    if-eqz v19, :cond_14

    .line 295
    :cond_11
    if-eqz p1, :cond_12

    .line 296
    const/16 v42, 0x64

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    .line 299
    :cond_12
    if-eqz v19, :cond_16

    .line 300
    new-instance v42, Ljava/security/SignatureException;

    const-string/jumbo v43, "verification was interrupted"

    invoke-direct/range {v42 .. v43}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 261
    .end local v5           #buffer:[B
    .end local v19           #interrupted:Z
    .end local v29           #sig:Ljava/security/Signature;
    .end local v36           #soFar:J
    .end local v38           #toRead:J
    :cond_13
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, "with"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 276
    .restart local v5       #buffer:[B
    .restart local v19       #interrupted:Z
    .restart local v29       #sig:Ljava/security/Signature;
    .restart local v36       #soFar:J
    .restart local v38       #toRead:J
    :cond_14
    array-length v0, v5

    move/from16 v35, v0

    .line 277
    .local v35, size:I
    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v42, v42, v36

    cmp-long v42, v42, v38

    if-lez v42, :cond_15

    .line 278
    sub-long v42, v38, v36

    move-wide/from16 v0, v42

    long-to-int v0, v0

    move/from16 v35, v0

    .line 280
    :cond_15
    const/16 v42, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v42

    move/from16 v2, v35

    invoke-virtual {v0, v5, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v28

    .line 281
    .local v28, read:I
    const/16 v42, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v42

    move/from16 v2, v28

    invoke-virtual {v0, v5, v1, v2}, Ljava/security/Signature;->update([BII)V

    .line 282
    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v36, v36, v42

    .line 284
    if-eqz p1, :cond_10

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 286
    .local v24, now:J
    const-wide/16 v42, 0x64

    mul-long v42, v42, v36

    div-long v42, v42, v38

    move-wide/from16 v0, v42

    long-to-int v0, v0

    move/from16 v26, v0

    .line 287
    .local v26, p:I
    move/from16 v0, v26

    move/from16 v1, v21

    if-le v0, v1, :cond_10

    sub-long v42, v24, v22

    const-wide/16 v44, 0x1f4

    cmp-long v42, v42, v44

    if-lez v42, :cond_10

    .line 289
    move/from16 v21, v26

    .line 290
    move-wide/from16 v22, v24

    .line 291
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    goto/16 :goto_2

    .line 303
    .end local v24           #now:J
    .end local v26           #p:I
    .end local v28           #read:I
    .end local v35           #size:I
    :cond_16
    invoke-virtual/range {v30 .. v30}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getEncryptedDigest()[B

    move-result-object v42

    move-object/from16 v0, v29

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v42

    if-nez v42, :cond_17

    .line 304
    new-instance v42, Ljava/security/SignatureException;

    const-string/jumbo v43, "signature digest verification failed"

    invoke-direct/range {v42 .. v43}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v42
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    :cond_17
    invoke-virtual/range {v27 .. v27}, Ljava/io/RandomAccessFile;->close()V

    .line 309
    return-void
.end method
