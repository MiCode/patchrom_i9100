.class public final Lcom/sec/android/internal/ims/external/TableDetails$User;
.super Ljava/lang/Object;
.source "TableDetails.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/internal/ims/external/TableDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "User"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATABASE_NAME_VT_CHAT_TABLE:Ljava/lang/String; = "VideoChatTableContent1.db"

.field public static final DB_VT_CHAT_TABLE_DEL_URI:Landroid/net/Uri; = null

.field public static final DB_VT_CHAT_TABLE_URI:Landroid/net/Uri; = null

.field public static final DateTime:Ljava/lang/String; = "DateTime"

.field public static final FilePath:Ljava/lang/String; = "FilePath"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final MyFOntSize:Ljava/lang/String; = "MyFOntSize"

.field public static final MyFontColor:Ljava/lang/String; = "MyFontColor"

.field public static final Number:Ljava/lang/String; = "Number"

.field public static final OtherFontColor:Ljava/lang/String; = "OtherFontColor"

.field public static final TABLE_NAME_VT_CHAT_TABLE:Ljava/lang/String; = "VideoChatTable"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "content://com.android.VideoChatTableProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/internal/ims/external/TableDetails$User;->CONTENT_URI:Landroid/net/Uri;

    .line 45
    const-string v0, "content://com.android.VideoChatTableProvider/VideoChatTable"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/internal/ims/external/TableDetails$User;->DB_VT_CHAT_TABLE_URI:Landroid/net/Uri;

    .line 49
    const-string v0, "content://com.android.VideoChatTableProvider/VideoChatTable/0"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/internal/ims/external/TableDetails$User;->DB_VT_CHAT_TABLE_DEL_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
