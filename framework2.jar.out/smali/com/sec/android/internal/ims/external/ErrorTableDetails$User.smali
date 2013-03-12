.class public final Lcom/sec/android/internal/ims/external/ErrorTableDetails$User;
.super Ljava/lang/Object;
.source "ErrorTableDetails.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/internal/ims/external/ErrorTableDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "User"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATABASE_NAME_ERROR_TABLE:Ljava/lang/String; = "VTErrorTableContent1.db"

.field public static final DB_ERROR_TABLE_DEL_URI:Landroid/net/Uri; = null

.field public static final DB_ERROR_TABLE_TABLE_URI:Landroid/net/Uri; = null

.field public static final ErrorCode:Ljava/lang/String; = "ErrorCode"

.field public static final ErrorString:Ljava/lang/String; = "ErrorString"

.field public static final TABLE_NAME_ERROR_TABLE:Ljava/lang/String; = "VTErrorTable"

.field public static final Timestamp:Ljava/lang/String; = "Timestamp"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "content://com.example.ErrorTableProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/internal/ims/external/ErrorTableDetails$User;->CONTENT_URI:Landroid/net/Uri;

    .line 47
    const-string v0, "content://com.example.ErrorTableProvider/VTErrorTable"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/internal/ims/external/ErrorTableDetails$User;->DB_ERROR_TABLE_TABLE_URI:Landroid/net/Uri;

    .line 51
    const-string v0, "content://com.example.ErrorTableProvider/VTErrorTable"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/internal/ims/external/ErrorTableDetails$User;->DB_ERROR_TABLE_DEL_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
