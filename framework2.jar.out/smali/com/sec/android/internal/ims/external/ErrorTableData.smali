.class public Lcom/sec/android/internal/ims/external/ErrorTableData;
.super Ljava/lang/Object;
.source "ErrorTableData.java"


# static fields
.field public static final DefaultmErrorCode:Ljava/lang/String; = "Error 2"

.field public static final DefaultmErrorString:Ljava/lang/String; = "Error 3"

.field public static final DefaultmTimestamp:Ljava/lang/String; = "Error 1"


# instance fields
.field public mErrorCode:Ljava/lang/String;

.field public mErrorString:Ljava/lang/String;

.field public mTimestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/external/ErrorTableData;->settoDefaultValues()V

    .line 62
    return-void
.end method


# virtual methods
.method public fillErrorData(Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "r1"

    .prologue
    .line 76
    new-instance v0, Lcom/sec/android/internal/ims/external/ErrorTableData;

    invoke-direct {v0}, Lcom/sec/android/internal/ims/external/ErrorTableData;-><init>()V

    .line 77
    .local v0, errData:Lcom/sec/android/internal/ims/external/ErrorTableData;
    new-instance v1, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;

    invoke-direct {v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;-><init>()V

    .line 80
    .local v1, errDataOp:Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;
    const-string v2, "201"

    iput-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorCode:Ljava/lang/String;

    .line 81
    const-string v2, "10:45"

    iput-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    .line 82
    const-string v2, "Always On Off"

    iput-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorString:Ljava/lang/String;

    .line 84
    invoke-virtual {v1, v0, p1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->insertDataIntoDB(Lcom/sec/android/internal/ims/external/ErrorTableData;Landroid/content/ContentResolver;)Landroid/net/Uri;

    .line 86
    const-string v2, "202"

    iput-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorCode:Ljava/lang/String;

    .line 87
    const-string v2, "10:45"

    iput-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    .line 88
    const-string v2, "Register failure resp.202"

    iput-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorString:Ljava/lang/String;

    .line 90
    invoke-virtual {v1, v0, p1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->insertDataIntoDB(Lcom/sec/android/internal/ims/external/ErrorTableData;Landroid/content/ContentResolver;)Landroid/net/Uri;

    .line 92
    const-string v2, "205"

    iput-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorCode:Ljava/lang/String;

    .line 93
    const-string v2, "10:45"

    iput-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    .line 94
    const-string v2, "EVDO not available while registering"

    iput-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorString:Ljava/lang/String;

    .line 96
    invoke-virtual {v1, v0, p1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->insertDataIntoDB(Lcom/sec/android/internal/ims/external/ErrorTableData;Landroid/content/ContentResolver;)Landroid/net/Uri;

    .line 98
    const-string v2, "301"

    iput-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorCode:Ljava/lang/String;

    .line 99
    const-string v2, "10:45"

    iput-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    .line 100
    const-string v2, "Media RTP timer timeout"

    iput-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorString:Ljava/lang/String;

    .line 102
    invoke-virtual {v1, v0, p1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->insertDataIntoDB(Lcom/sec/android/internal/ims/external/ErrorTableData;Landroid/content/ContentResolver;)Landroid/net/Uri;

    .line 104
    const-string v2, "304"

    iput-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorCode:Ljava/lang/String;

    .line 105
    const-string v2, "10:45"

    iput-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    .line 106
    const-string v2, "User Cancelled call"

    iput-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorString:Ljava/lang/String;

    .line 108
    invoke-virtual {v1, v0, p1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->insertDataIntoDB(Lcom/sec/android/internal/ims/external/ErrorTableData;Landroid/content/ContentResolver;)Landroid/net/Uri;

    .line 110
    return-void
.end method

.method public settoDefaultValues()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "Error 1"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    .line 69
    const-string v0, "Error 2"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorCode:Ljava/lang/String;

    .line 70
    const-string v0, "Error 3"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorString:Ljava/lang/String;

    .line 72
    return-void
.end method
