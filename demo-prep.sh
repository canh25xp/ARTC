#!/bin/bash

# Demo Preparation Script for "The Art of Command Line" Presentation
# This creates sample data to demonstrate CLI power live

echo "Setting up demo data..."

# Create sample directory structure
mkdir -p demo-data/{logs,images,reports}

# Create sample log files
cat >demo-data/logs/access.log <<'EOF'
192.168.1.100 - - [13/Nov/2024:10:05:23 +0000] "GET /contact HTTP/1.1" 200 512 "Mozilla/5.0 (Windows)"
192.168.1.101 - - [13/Nov/2024:10:07:45 +0000] "GET /products HTTP/1.1" 200 1024 "Mozilla/5.0 (Macintosh)"
192.168.1.100 - - [13/Nov/2024:10:12:11 +0000] "GET /contact HTTP/1.1" 200 512 "Mozilla/5.0 (Windows)"
10.0.0.5 - - [13/Nov/2024:11:02:33 +0000] "GET /contact HTTP/1.1" 200 512 "Mozilla/5.0 (Android)"
192.168.1.102 - - [13/Nov/2024:11:15:28 +0000] "GET /mobile HTTP/1.1" 200 756 "Safari Mobile"
192.168.1.103 - - [13/Nov/2024:12:08:17 +0000] "GET /contact HTTP/1.1" 200 512 "Mozilla/5.0 (Linux)"
EOF

cat >demo-data/logs/error.log <<'EOF'
ERROR [2024-11-13 10:23:45] Database connection failed for user@example.com
ERROR [2024-11-13 11:05:12] API rate limit exceeded: 10.0.0.5
ERROR [2024-11-13 11:22:33] Database connection failed for admin@example.com
WARN [2024-11-13 12:01:45] High memory usage detected
ERROR [2024-11-13 13:07:22] Database connection failed for test@example.com
EOF

# Create sample images (empty files with size simulation)
for i in {1..3}; do
    dd if=/dev/zero of="demo-data/images/photo${i}.jpg" bs=1M count=$((i + 1)) 2>/dev/null
done

# Create a regular size image
touch demo-data/images/thumbnail1.jpg

# Create sample customer data
cat >demo-data/customer-list.txt <<'EOF'
Alice Johnson
Bob Smith
Carol Williams
David Brown
Alice Johnson
Eve Davis
Frank Miller
Alice Johnson
Grace Wilson
Henry Taylor
Bob Smith
EOF

# Create quarterly reports
for quarter in Q1 Q2 Q3 Q4; do
    echo "Quarterly Report - $quarter 2024" >"demo-data/reports/${quarter}_report.txt"
    echo "==================" >>"demo-data/reports/${quarter}_report.txt"
    echo "Revenue: $((RANDOM % 100000 + 50000))" >>"demo-data/reports/${quarter}_report.txt"
    echo "Customers: $((RANDOM % 1000 + 200))" >>"demo-data/reports/${quarter}_report.txt"
done

echo "Demo data created successfully!"
echo ""
echo "Available demo commands to run:"
echo ""
echo "# 1. How many unique IPs visited the contact page?"
echo "grep '/contact' demo-data/logs/access.log | awk '{print \$1}' | sort | uniq | wc -l"
echo ""
echo "# 2. What are the top 3 error patterns?"
echo "grep 'ERROR' demo-data/logs/error.log | sed 's/.*] //' | sort | uniq -c | sort -nr | head -3"
echo ""
echo "# 3. Find image files larger than 2MB"
echo "find demo-data/images -name '*.jpg' -size +2M -exec ls -lh {} \;"
echo ""
echo "# 4. Count duplicate customer names"
echo "sort demo-data/customer-list.txt | uniq -d"
echo ""
echo "# 5. Get disk usage summary"
echo "du -h demo-data/* | sort -hr"
echo ""
echo "Run ./demo-prep.sh to set up, then try these commands!"
