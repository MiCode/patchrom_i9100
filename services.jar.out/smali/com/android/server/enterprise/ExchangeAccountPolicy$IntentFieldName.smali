.class Lcom/android/server/enterprise/ExchangeAccountPolicy$IntentFieldName;
.super Ljava/lang/Object;
.source "ExchangeAccountPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ExchangeAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IntentFieldName"
.end annotation


# static fields
.field private static final account_name:Ljava/lang/String; = "account_name"

.field private static final certificate_data:Ljava/lang/String; = "certificate_data"

.field private static final certificate_password:Ljava/lang/String; = "certificate_password"

.field private static final domain:Ljava/lang/String; = "domain"

.field private static final is_default:Ljava/lang/String; = "is_default"

.field private static final notify:Ljava/lang/String; = "notify"

.field private static final off_peak:Ljava/lang/String; = "off_peak"

.field private static final peak:Ljava/lang/String; = "peak"

.field private static final peak_days:Ljava/lang/String; = "peak_days"

.field private static final peak_endtime:Ljava/lang/String; = "peak_endtime"

.field private static final peak_starttime:Ljava/lang/String; = "peak_starttime"

.field private static final period_calendar:Ljava/lang/String; = "period_calendar"

.field private static final period_email:Ljava/lang/String; = "period_email"

.field private static final retrival_size:Ljava/lang/String; = "retrival_size"

.field private static final roaming_schedule:Ljava/lang/String; = "roaming_schedule"

.field private static final serverPathPrefix:Ljava/lang/String; = "serverPathPrefix"

.field private static final server_name:Ljava/lang/String; = "server_name"

.field private static final service:Ljava/lang/String; = "service"

.field private static final signature:Ljava/lang/String; = "signature"

.field private static final sync_calendar:Ljava/lang/String; = "sync_calendar"

.field private static final sync_contacts:Ljava/lang/String; = "sync_contacts"

.field private static final trust_all:Ljava/lang/String; = "trust_all"

.field private static final use_ssl:Ljava/lang/String; = "use_ssl"

.field private static final use_tsl:Ljava/lang/String; = "use_tsl"

.field private static final user_id:Ljava/lang/String; = "user_id"

.field private static final user_name:Ljava/lang/String; = "user_name"

.field private static final user_passwd:Ljava/lang/String; = "user_passwd"

.field private static final vibrate:Ljava/lang/String; = "vibrate"

.field private static final vibrate_when_silent:Ljava/lang/String; = "vibrate_when_silent"


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/ExchangeAccountPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/ExchangeAccountPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/server/enterprise/ExchangeAccountPolicy$IntentFieldName;->this$0:Lcom/android/server/enterprise/ExchangeAccountPolicy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
