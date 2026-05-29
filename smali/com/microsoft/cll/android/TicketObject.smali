.class public Lcom/microsoft/cll/android/TicketObject;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public hasDeviceClaims:Z

.field public ticket:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/cll/android/TicketObject;->ticket:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/microsoft/cll/android/TicketObject;->hasDeviceClaims:Z

    return-void
.end method
