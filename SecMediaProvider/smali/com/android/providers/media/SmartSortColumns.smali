.class public Lcom/android/providers/media/SmartSortColumns;
.super Ljava/lang/Object;
.source "SmartSortColumns.java"


# static fields
.field public static final SMART_SORT_INSERT_URI:Landroid/net/Uri;

.field public static final SMART_SORT_PROGRESS_URI:Landroid/net/Uri;

.field public static final SMART_SORT_REQUEST_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "content://media/external/smart_sort/scan"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/SmartSortColumns;->SMART_SORT_REQUEST_URI:Landroid/net/Uri;

    .line 7
    const-string v0, "content://media/external/smart_sort"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/SmartSortColumns;->SMART_SORT_INSERT_URI:Landroid/net/Uri;

    .line 9
    const-string v0, "content://media/smart_sort_progress"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/SmartSortColumns;->SMART_SORT_PROGRESS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
