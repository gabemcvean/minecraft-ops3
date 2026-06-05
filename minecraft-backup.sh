#!/bin/bash
kubectl scale deployment minecraft --replicas=0
sleep 10
BACKUP_FILE="world-backup-$(date +%F-%H%M).tar.gz"
tar czf /tmp/$BACKUP_FILE -C /var/lib/rancher/k3s/storage $(ls /var/lib/rancher/k3s/storage | grep minecraft-world)
aws s3 cp /tmp/$BACKUP_FILE s3://minecraft-backup-339712756067/
rm /tmp/$BACKUP_FILE
kubectl scale deployment minecraft --replicas=1
echo "Backup complete: $BACKUP_FILE"
