for vmid in $(vim-cmd vmsvc/getallvms | awk '{print $1}' | grep -v Vmid); do
    echo "Shutting down VM ID: $vmid"
    vim-cmd vmsvc/power.off $vmid
    echo "------------------------"
done
