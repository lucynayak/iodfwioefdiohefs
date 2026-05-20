.class public Lcom/microsoft/cll/android/TicketHeaders;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public authXToken:Ljava/lang/String;

.field public msaDeviceTicket:Ljava/lang/String;

.field public xtokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
