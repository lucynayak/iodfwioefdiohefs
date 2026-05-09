.class public abstract Lv2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lv2/a;

.field public b:Lv2/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lv2/c;->b:Lv2/d;

    iput-object v0, p0, Lv2/c;->a:Lv2/a;

    return-void
.end method


# virtual methods
.method public final c(Lv2/c;)V
    .locals 0

    return-void
.end method
