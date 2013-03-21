.class public Lcom/android/providers/media/Columns;
.super Ljava/lang/Object;
.source "Columns.java"


# static fields
.field public static final CONTACT_CHANGED_URI:Landroid/net/Uri;

.field public static final FACES_URI:Landroid/net/Uri;

.field public static final FACE_SCANNER_REQUEST_URI:Landroid/net/Uri;

.field public static final GET_SIMILAR_PERSONS_URI:Landroid/net/Uri;

.field protected static IGNORE_NOTIFY:Ljava/lang/String;

.field public static final KEY_FACES_URI:Landroid/net/Uri;

.field public static final PERSONS_URI:Landroid/net/Uri;

.field public static final RAW_SQL_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "content://media/external/raw_sql"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/Columns;->RAW_SQL_URI:Landroid/net/Uri;

    .line 15
    const-string v0, "content://media/external/faces"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    .line 16
    const-string v0, "content://media/internal/faces"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/Columns;->KEY_FACES_URI:Landroid/net/Uri;

    .line 17
    const-string v0, "content://media/internal/persons"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/Columns;->PERSONS_URI:Landroid/net/Uri;

    .line 18
    const-string v0, "content://media/external/face_scanner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/Columns;->FACE_SCANNER_REQUEST_URI:Landroid/net/Uri;

    .line 19
    const-string v0, "content://media/internal/contact_changed"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/Columns;->CONTACT_CHANGED_URI:Landroid/net/Uri;

    .line 22
    const-string v0, "ignoreNotify"

    sput-object v0, Lcom/android/providers/media/Columns;->IGNORE_NOTIFY:Ljava/lang/String;

    .line 39
    const-string v0, "content://media/external/similar_persons"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/Columns;->GET_SIMILAR_PERSONS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method
