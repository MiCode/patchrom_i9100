.class public interface abstract Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;
.super Ljava/lang/Object;
.source "ProviderConstants.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

.field public static final PREFIX_CONTENT_URI:Landroid/net/Uri;

.field public static final REJECTMSG_CONTENT_URI:Landroid/net/Uri;

.field public static final WHITELIST_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "content://com.sec.android.app.callsetting.allcalls/reject_num"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->AUTOREJECT_CONTENT_URI:Landroid/net/Uri;

    .line 33
    const-string v0, "content://com.sec.android.app.callsetting.allcalls/prefix_num"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->PREFIX_CONTENT_URI:Landroid/net/Uri;

    .line 36
    const-string v0, "content://com.sec.android.app.callsetting.allcalls/reject_msg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    .line 39
    const-string v0, "content://com.sec.android.app.callsetting.allcalls/whitelist_num"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/callsetting/allcalls/ProviderConstants;->WHITELIST_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
