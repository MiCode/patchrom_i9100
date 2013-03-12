.class public final Lcom/samsung/bluetoothle/BluetoothLENamespace$Services;
.super Ljava/lang/Object;
.source "BluetoothLENamespace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/bluetoothle/BluetoothLENamespace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Services"
.end annotation


# static fields
.field public static final AlertNotificationService:I = 0x1811

.field public static final BatteryService:I = 0x180f

.field public static final BloodPressure:I = 0x1810

.field public static final CurrentTimeService:I = 0x1805

.field public static final DeviceInformationService:I = 0x180a

.field public static final GenericAccess:I = 0x1800

.field public static final GenericAttribute:I = 0x1801

.field public static final HealthThermometer:I = 0x1809

.field public static final HeartRate:I = 0x180d

.field public static final HumanInterfaceDevice:I = 0x1812

.field public static final ImmediateAlert:I = 0x1802

.field public static final LinkLoss:I = 0x1803

.field public static final NextDSTChangeService:I = 0x1807

.field public static final PhoneAlertStatusService:I = 0x180e

.field public static final ReferenceTimeUpdateService:I = 0x1806

.field public static final ScanParameters:I = 0x1813

.field public static final TxPower:I = 0x1804


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
